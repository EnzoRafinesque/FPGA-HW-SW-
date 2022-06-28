
#include <stdint.h>
#include <hls_stream.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include "krnl_matrixmul.h"


// TRIPCOUNT minimum/maximum bound limit for the loops
const int c_dim = MAX_DIM_SIZE;

extern "C" {

//void matmul_opted(int* in1, int* in2, int* out_r, int size) {
	//void matmul_opted(int* in1, int* in2, int* out_r, int size, int rep_count) {
void matmul_opt_2(data_t* in1, data_t* in2, data_t* out_r) {

    #pragma HLS INTERFACE m_axi port = in1 bundle = gmem0
    #pragma HLS INTERFACE m_axi port = in2 bundle = gmem1
    #pragma HLS INTERFACE m_axi port = out_r bundle = gmem0
//WARNING: [XFORM 203-803] Cannot bundle argument 'in1' (matmul.cpp:19:1) to m_axi port 'gmem0' since its offset mode is off.
//WARNING: [XFORM 203-803] Cannot bundle argument 'in2' (matmul.cpp:20:1) to m_axi port 'gmem1' since its offset mode is off.
//WARNING: [XFORM 203-803] Cannot bundle argument 'out_r' (matmul.cpp:21:1) to m_axi port 'gmem0' since its offset mode is off.

    // Local buffers to hold input data
	data_t A[c_dim][c_dim];
	data_t B[c_dim][c_dim];
	data_t C[c_dim][c_dim];
	data_t temp_sum[c_dim];


    // Read data from global memory and write into local buffer for in1
    readA:
        for (int itr = 0, i = 0, j = 0; itr < c_dim * c_dim; itr++, j++) {
        //#pragma HLS LOOP_TRIPCOUNT min = c_dim * c_dim max = c_dim * c_dim
            if (j == c_dim) {
                j = 0;
                i++;
            }
            A[i][j] = in1[itr];
        }

    // Read data from global memory and write into local buffer for in2
    readB:
        for (int itr = 0, i = 0, j = 0; itr < c_dim * c_dim; itr++, j++) {
        //#pragma HLS LOOP_TRIPCOUNT min = c_dim * c_dim max = c_dim * c_dim
            if (j == c_dim) {
                j = 0;
                i++;
            }
            B[i][j] = in2[itr];
        }

//Without pipelining and partitioning: Latency: 8992
//With pipelining, without partitioning: Latency: 135
//With pipelining and partitioning: Latency: 17

//#pragma HLS ARRAY_PARTITION variable=A cyclic factor=8 dim=2
//#pragma HLS ARRAY_PARTITION variable=B cyclic factor=32 dim=2
//#pragma HLS ARRAY_PARTITION variable=C cyclic factor=32 dim=2

//loop_count:
	//for (int i = 0; i < rep_count; i++) {

    // Calculate matrix multiplication using local data buffer based on input size,
    // and write results into C
        nopart1:
            for (int row = 0; row < c_dim; row++) {
            //#pragma HLS LOOP_TRIPCOUNT min = c_dim max = c_dim
			//#pragma HLS PIPELINE
            nopart2:
                for (int col = 0; col < c_dim; col++) {
                //#pragma HLS LOOP_TRIPCOUNT min = c_dim max = c_dim
       			#pragma HLS PIPELINE
                nopart3:
                    for (int j = 0; j < c_dim; j++) {
						#pragma HLS LOOP_FLATTEN off
				        //#pragma HLS LOOP_TRIPCOUNT min = c_dim max = c_dim
                    	data_t result = (col == 0) ? (data_t)0 : temp_sum[j];
                        result += A[row][col] * B[col][j];
                        temp_sum[j] = result;
                        if (col == c_dim - 1) C[row][j] = result;
                    }
                }
            }

	//}
        // Write results from local buffer to global memory for out
    writeC:
        for (int itr = 0, i = 0, j = 0; itr < c_dim * c_dim; itr++, j++) {
        //#pragma HLS LOOP_TRIPCOUNT min = c_dim* c_dim max = c_dim * c_dim
            if (j == c_dim) {
                j = 0;
                i++;
            }
            out_r[itr] = C[i][j];
        }


    }
}

