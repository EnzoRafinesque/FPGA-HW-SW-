#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.matmul.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.matmul.autotvout_gmem0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.matmul.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.matmul.autotvout_gmem1.dat"
// wrapc file define:
#define AUTOTB_TVIN_in1 "../tv/cdatafile/c.matmul.autotvin_in1.dat"
#define AUTOTB_TVOUT_in1 "../tv/cdatafile/c.matmul.autotvout_in1.dat"
// wrapc file define:
#define AUTOTB_TVIN_in2 "../tv/cdatafile/c.matmul.autotvin_in2.dat"
#define AUTOTB_TVOUT_in2 "../tv/cdatafile/c.matmul.autotvout_in2.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_r "../tv/cdatafile/c.matmul.autotvin_out_r.dat"
#define AUTOTB_TVOUT_out_r "../tv/cdatafile/c.matmul.autotvout_out_r.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.matmul.autotvout_gmem0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.matmul.autotvout_gmem1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in1 "../tv/rtldatafile/rtl.matmul.autotvout_in1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in2 "../tv/rtldatafile/rtl.matmul.autotvout_in2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_r "../tv/rtldatafile/rtl.matmul.autotvout_out_r.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem0_depth = 0;
  gmem1_depth = 0;
  in1_depth = 0;
  in2_depth = 0;
  out_r_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{in1 " << in1_depth << "}\n";
  total_list << "{in2 " << in2_depth << "}\n";
  total_list << "{out_r " << out_r_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem0_depth;
    int gmem1_depth;
    int in1_depth;
    int in2_depth;
    int out_r_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s40__ { char data[64]; };
extern "C" void matmul_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_matmul_hw(volatile void * __xlx_apatb_param_in1, volatile void * __xlx_apatb_param_in2, volatile void * __xlx_apatb_param_out_r) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<512> tr(2);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem0, tr.p, tr.tbytes);
tr.reorder();
tr.send<64>((char*)__xlx_apatb_param_in1, 1);
tr.send<64>((char*)__xlx_apatb_param_out_r, 1);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > gmem0_pc_buffer(2);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "gmem0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gmem0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_in1)[j*8+0] = gmem0_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+1] = gmem0_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+2] = gmem0_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+3] = gmem0_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+4] = gmem0_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+5] = gmem0_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+6] = gmem0_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_in1)[j*8+7] = gmem0_pc_buffer[i].range(511,448).to_int64();
}
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_out_r)[j*8+0] = gmem0_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+1] = gmem0_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+2] = gmem0_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+3] = gmem0_pc_buffer[i].range(255,192).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+4] = gmem0_pc_buffer[i].range(319,256).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+5] = gmem0_pc_buffer[i].range(383,320).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+6] = gmem0_pc_buffer[i].range(447,384).to_int64();
((long long*)__xlx_apatb_param_out_r)[j*8+7] = gmem0_pc_buffer[i].range(511,448).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_in1 = 0;
unsigned __xlx_offset_byte_param_out_r = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem0, 'b');
transaction<512> tr(2);
  __xlx_offset_byte_param_in1 = 0*64;
  if (__xlx_apatb_param_in1) {
tr.import<64>((char*)__xlx_apatb_param_in1, 1, 0);
  }
  __xlx_offset_byte_param_out_r = 1*64;
  if (__xlx_apatb_param_out_r) {
tr.import<64>((char*)__xlx_apatb_param_out_r, 1, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_gmem0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.gmem0_depth);
#else
// print gmem0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_in1 = 0*64;
  if (__xlx_apatb_param_in1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in1)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in1)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_in1)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_in1)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_in1)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_in1)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_in1)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_in1)[j*8+7];
aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_out_r = 1*64;
  if (__xlx_apatb_param_out_r) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out_r)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out_r)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_out_r)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_out_r)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_out_r)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_out_r)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_out_r)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_out_r)[j*8+7];
aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.gmem0_depth);
aesl_fh.write(AUTOTB_TVIN_gmem0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_in2 = 0;
// print gmem1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_in2 = 0*64;
  if (__xlx_apatb_param_in2) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in2)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in2)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_in2)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_in2)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_in2)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_in2)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_in2)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_in2)[j*8+7];
aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(1, &tcl_file.gmem1_depth);
aesl_fh.write(AUTOTB_TVIN_gmem1, end_str());
}

// print in1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_in1, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = __xlx_offset_byte_param_in1;
aesl_fh.write(AUTOTB_TVIN_in1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.in1_depth);
aesl_fh.write(AUTOTB_TVIN_in1, end_str());
}

// print in2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_in2, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = __xlx_offset_byte_param_in2;
aesl_fh.write(AUTOTB_TVIN_in2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.in2_depth);
aesl_fh.write(AUTOTB_TVIN_in2, end_str());
}

// print out_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_out_r, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = __xlx_offset_byte_param_out_r;
aesl_fh.write(AUTOTB_TVIN_out_r, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.out_r_depth);
aesl_fh.write(AUTOTB_TVIN_out_r, end_str());
}

CodeState = CALL_C_DUT;
matmul_hw_stub_wrapper(__xlx_apatb_param_in1, __xlx_apatb_param_in2, __xlx_apatb_param_out_r);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem0, 'b');
transaction<512> tr(2);
  __xlx_offset_byte_param_in1 = 0*64;
  if (__xlx_apatb_param_in1) {
tr.import<64>((char*)__xlx_apatb_param_in1, 1, 0);
  }
  __xlx_offset_byte_param_out_r = 1*64;
  if (__xlx_apatb_param_out_r) {
tr.import<64>((char*)__xlx_apatb_param_out_r, 1, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_gmem0, tr.p, tr.tbytes);
}

  tcl_file.set_num(2, &tcl_file.gmem0_depth);
#else
// print gmem0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gmem0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_in1 = 0*64;
  if (__xlx_apatb_param_in1) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_in1)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_in1)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_in1)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_in1)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_in1)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_in1)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_in1)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_in1)[j*8+7];
aesl_fh.write(AUTOTB_TVOUT_gmem0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_out_r = 1*64;
  if (__xlx_apatb_param_out_r) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_out_r)[j*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_out_r)[j*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_out_r)[j*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_out_r)[j*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_out_r)[j*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_out_r)[j*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_out_r)[j*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_out_r)[j*8+7];
aesl_fh.write(AUTOTB_TVOUT_gmem0, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(2, &tcl_file.gmem0_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem0, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
