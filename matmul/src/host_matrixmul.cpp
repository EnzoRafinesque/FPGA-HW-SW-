/**

*/

#define OCL_CHECK(error, call)                                                                   \
    call;                                                                                        \
    if (error != CL_SUCCESS) {                                                                   \
        printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__, error); \
        exit(EXIT_FAILURE);                                                                      \
    }

#include "host_matrixmul.h"
#include <fstream>
#include <algorithm>
#include <iostream>
#include <stdlib.h>
//#include <time.h>
//#include <unistd.h>
//#include <fcntl.h>
//#include <sys/mman.h>
#include <iomanip>
#include <random>
#include <vector>
#include <chrono>
#include <thread>
#include "app-general.h"


using std::cerr;
using std::endl;
using std::ofstream;

using std::default_random_engine;
using std::generate;
using std::uniform_int_distribution;
using std::vector;
using std::string;
using std::cout;
using namespace std::chrono_literals;

static const int c_dim = MAX_DIM_SIZE;
static const int c_matrix_total_size = c_dim * c_dim; // m x n = 16 x 16 = 256

static const string error_message =
    "Error: Result mismatch:\n"
    "i = %d CPU result = %d Device result = %d\n";




void matmul(data_t* C, data_t* A, data_t* B, int M) {
    for (int k = 0; k < M; k++) {
        for (int j = 0; j < M; j++) {
            for (int i = 0; i < M; i++) {
                C[k * M + j] += A[k * M + i] * B[i * M + j];
            }
        }
    }
}

int gen_random() {
    static default_random_engine e;
    static uniform_int_distribution<int> dist(0, 10);

    return dist(e);
}

void print(data_t* data, int columns, int rows) {
    vector<data_t> out(columns * rows);
    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < columns; c++) {
            cout << std::setw(4) << data[r * columns + c] << " ";
        }
        cout << "…\n";
    }
    for (int r = 0; r < rows; r++) {
        cout << "   … ";
    }
    cout << "⋱\n\n";
}

void verify(vector<data_t, aligned_allocator<data_t> >& gold, vector<data_t, aligned_allocator<data_t> >& output) {
    int error = 0;
	for (int i = 0; i < (int)output.size(); i++) {
        if (output[i] != gold[i]) {
            cout << "Mismatch " << i << ": gold: " << gold[i] << " device: " << output[i] << "\n";
           // print(output.data(), c_dim, c_dim);
            cout << "TEST FAILED!" << std::endl;
            error = 1;

        } else {
           // cout << "TEST SUCCESSFULLY DONE!" << std::endl;
           // exit (EXIT_SUCCESS);
        }
    }
    if ( error == 1) exit(EXIT_FAILURE); else cout << "TEST SUCCESSFULLY DONE!" << std::endl;
}



int main(int argc, char* argv[]) {


	ofstream outdata; // outdata is like cin
	long long exec_time[10];
	//uint32_t repeat_counter = 1000;
    // TARGET_DEVICE macro needs to be passed from gcc command line
    if (argc != 2) {
        cout << "Usage: " << argv[0] << " <xclbin>" << std::endl;
        return EXIT_FAILURE;
    }

    string xclbinFilename = argv[1];

    // Compute the size of array in bytes
    uint16_t array_size_bytes = c_matrix_total_size * sizeof(data_t);

    // Creates a matrix of c_matrix_total_size elements with an initial value of 10 and 32
    // using customized allocator for getting buffer alignment to 4k boundary

    vector<cl::Device> devices;
    cl_int err;
    cl::Context context;
    cl::CommandQueue q;
    cl::Kernel krnl_matrixmul, krnl_matrixmul_opted;
    cl::Program program;
    vector<cl::Platform> platforms;
    bool found_device = false;

    // traversing all Platforms To find Xilinx Platform and targeted
    // Device in Xilinx Platform
    cl::Platform::get(&platforms);
    for (size_t i = 0; (i < platforms.size()) & (found_device == false); i++) {
        cl::Platform platform = platforms[i];
        string platformName = platform.getInfo<CL_PLATFORM_NAME>();
        if (platformName == "Xilinx") {
            devices.clear();
            platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
            if (devices.size()) {
                found_device = true;
                break;
            }
        }
    }
    if (found_device == false) {
        cout << "Error: Unable to find Target Device " << std::endl;
        return EXIT_FAILURE;
    }

    cout << "INFO: Reading " << xclbinFilename << std::endl;
    FILE* fp;
    if ((fp = fopen(xclbinFilename.c_str(), "r")) == nullptr) {
        printf("ERROR: %s xclbin not available please build\n", xclbinFilename.c_str());
        exit(EXIT_FAILURE);
    }
    // Load xclbin
    cout << "Loading: '" << xclbinFilename << "'\n";
    std::ifstream bin_file(xclbinFilename, std::ifstream::binary);
    bin_file.seekg(0, bin_file.end);
    unsigned nb = bin_file.tellg();
    bin_file.seekg(0, bin_file.beg);
    char* buf = new char[nb];
    bin_file.read(buf, nb);

    // Creating Program from Binary File
    cl::Program::Binaries bins;
    bins.push_back({buf, nb});
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_matrixmul = cl::Kernel(program, HW_TOP_NAME, &err));
           // OCL_CHECK(err, krnl_matrixmul_opted = cl::Kernel(program, "matmul_opt", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // We then need to map our OpenCL buffers to get the pointers
    vector<data_t, aligned_allocator<data_t> > A(c_matrix_total_size);
    vector<data_t, aligned_allocator<data_t> > B(c_matrix_total_size);
    vector<data_t, aligned_allocator<data_t> > gold(c_matrix_total_size,0);
    vector<data_t, aligned_allocator<data_t> > C(c_matrix_total_size,0);

    cout <<  "c_matrix_total_size: \n" << c_matrix_total_size << endl;
    cout <<  "size of data_t: \n" << sizeof(data_t) << endl;
    printf ("pointer of A:%p \n", &A[0]);
    printf ("pointer of B:%p \n", &B[0]);
    printf ("pointer of gold:%p \n", &gold[0]);
    printf ("pointer of C:%p \n", &C[0]);



//    vector<data_t> A(c_matrix_total_size);
//	vector<data_t> B(c_matrix_total_size);
//	vector<data_t> gold(c_matrix_total_size, 0);
//	vector<data_t> C(c_matrix_total_size, 0);


    //These commands will allocate memory on the Device. The cl::Buffer objects can
    // be used to reference the memory locations on the device.
    OCL_CHECK(err, cl::Buffer buff_a(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes, A.data(), &err));
    OCL_CHECK(err, cl::Buffer buff_b(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes, B.data(), &err));
    OCL_CHECK(err, cl::Buffer buff_c(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes, C.data(), &err));
   // debug print
    generate(begin(A), end(A), gen_random);
    generate(begin(B), end(B), gen_random);
    //fill(A.begin(), A.end(), rand()%11);
    //print(A.data(), c_dim, c_dim);
    //print(B.data(), c_dim, c_dim);

    // we declare the object of sw with parent class of StopWatch to start the counting execution time of our program.
    util::StopWatch sw, hw;
    // start the StopWatch
    if( !sw.start() ) cout<<"Problems in starting the stopwatch"<<'\n';
    // launch golden model on the CPU.
    	//timezonestart(1);
    	matmul(gold.data(), A.data(), B.data(), c_dim);
    	//exec_time[0] = timezonestop(1);

    // stop the StopWatch
    if( !sw.stop() ) cout<<"Problems in stopping the stopwatch"<<'\n';
    cout << '\n';
    cout << "SW EXECUTION TIME= " << sw.printTU() <<'\n';
    cout << '\n';

   // cout << "Golden Model Result:\n";
    // print(gold.data(), c_dim, c_dim);

    // set the kernel Arguments
    int narg = 0;
	OCL_CHECK(err, err = krnl_matrixmul.setArg(narg++, buff_a));
	OCL_CHECK(err, err = krnl_matrixmul.setArg(narg++, buff_b));
	OCL_CHECK(err, err = krnl_matrixmul.setArg(narg++, buff_c));
//	OCL_CHECK(err, err = krnl_matrixmul.setArg(narg++, c_dim));
	//OCL_CHECK(err, err = krnl_matrixmul.setArg(narg++, repeat_counter));

	// Data from host space is migrated to the kernel space
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buff_a, buff_b}, 0 /* 0 means from host*/));

//    cl::Event event;
//    uint64_t nstimestart, nstimeend;

    //timezonestart(2);
    //OCL_CHECK(err, err = q.enqueueTask(krnl_matrixmul, nullptr, &event));
    //launch the kernel
    if( !hw.start() ) cout<<"Problems in starting the stopwatch"<<'\n';
    OCL_CHECK(err, err = q.enqueueTask(krnl_matrixmul));


    // The results of kernel need to be retrieved so the pointer in kernel space should be
    // migrated from the FPGA to the host source result vector (i.e., buff_c).
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buff_c}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // stop the StopWatch
	if( !hw.stop() ) cout<<"Problems in stopping the stopwatch"<<'\n';
	cout << '\n';
	cout << "HW EXECUTION TIME= " << hw.printTU() <<'\n';
	cout << '\n';
    //exec_time[1]= timezonestop(2);
   // cout << "Kernel Done \n";
    //OCL_CHECK(err, err = event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_START, &nstimestart));
	//OCL_CHECK(err, err = event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_END, &nstimeend));
    //auto matmul_time = (nstimeend - nstimestart) / repeat_counter;
   // auto matmul_time = (nstimeend - nstimestart);
    //print(C.data(), c_dim, c_dim);
    //cout << "| " << std::left << std::setw(24) << "MATMUL_NAIVE: (cl::event) "
               //   << "|" << std::right << std::setw(24) << matmul_time  << " (NS)  |\n";
    //std::this_thread::sleep_for(2s);
    verify(gold, C);
    //cout << "TEST: MATMUL (SW/HW) SUCCESSFULLY DONE!" << std::endl;

//    narg = 0;
//   	OCL_CHECK(err, err = krnl_matrixmul_opted.setArg(narg++, buff_a));
//   	OCL_CHECK(err, err = krnl_matrixmul_opted.setArg(narg++, buff_b));
//   	OCL_CHECK(err, err = krnl_matrixmul_opted.setArg(narg++, buff_c));
//   	OCL_CHECK(err, err = krnl_matrixmul_opted.setArg(narg++, c_dim));
  // 	OCL_CHECK(err, err = krnl_matrixmul_opted.setArg(narg++, repeat_counter));

//    timezonestart(3);
	//OCL_CHECK(err, err = q.enqueueTask(krnl_matrixmul_opted, nullptr, &event));
	//launch the kernel

//	OCL_CHECK(err, err = q.enqueueTask(krnl_matrixmul_opted));
//	exec_time [2] = timezonestop(3);

	// The results of kernel need to be retrieved so the pointer in kernel space should be
	// migrated from the FPGA to the host source result vector (i.e., buff_c).
//	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buff_c}, CL_MIGRATE_MEM_OBJECT_HOST));
//	q.finish();
	// cout << "Kernel Done \n";
	//OCL_CHECK(err, err = event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_START, &nstimestart));
	//OCL_CHECK(err, err = event.getProfilingInfo<uint64_t>(CL_PROFILING_COMMAND_END, &nstimeend));
	//auto matmul_time_opted = (nstimeend - nstimestart) / repeat_counter;
	//auto matmul_time_opted = (nstimeend - nstimestart);
	//print(C.data(), c_dim, c_dim);
	//cout << "| " << std::left << std::setw(24) << "MATMUL_OPTED: (cl::event) "
				// << "|" << std::right << std::setw(24) << matmul_time_opted  << " (NS)  |\n";
//
//	verify(gold, C);
//	cout << "TEST: MATMUL (OPTIMIZED) SUCCESSFULLY DONE!" << std::endl;

	outdata.open(HW_TOP_NAME".log"); // opens the file
	   if( !outdata ) { // file couldn't be opened
	      cerr << "Error: file could not be opened" << endl;
	      exit(1);
	   }

	outdata << "APP: MATMUL - " << HW_TOP_NAME "\n" << "SW: " << exec_time[0] << " us \n" << endl
								<< "HW: " << exec_time[1] << " us \n" << endl;
	outdata.close();

    return EXIT_SUCCESS;
}
