#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s10__ { char data[16]; };
extern "C" void matmul(__cosim_s10__*, __cosim_s10__*, int, int, int);
extern "C" void apatb_matmul_hw(volatile void * __xlx_apatb_param_in1, volatile void * __xlx_apatb_param_in2, volatile void * __xlx_apatb_param_out_r) {
  // Collect __xlx_in1_out_r__tmp_vec
  vector<sc_bv<128> >__xlx_in1_out_r__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_in1)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_in1)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_in1)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_in1)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_in1)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_in1)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_in1)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_in1)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_in1)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_in1)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_in1)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_in1)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_in1)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_in1)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_in1)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_in1)[j*16+15];
    __xlx_in1_out_r__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_in1 = 1;
  int __xlx_offset_param_in1 = 0;
  int __xlx_offset_byte_param_in1 = 0*16;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_out_r)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_out_r)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_out_r)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_out_r)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_out_r)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_out_r)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_out_r)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_out_r)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_out_r)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_out_r)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_out_r)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_out_r)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_out_r)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_out_r)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_out_r)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_out_r)[j*16+15];
    __xlx_in1_out_r__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_out_r = 1;
  int __xlx_offset_param_out_r = 1;
  int __xlx_offset_byte_param_out_r = 1*16;
  __cosim_s10__* __xlx_in1_out_r__input_buffer= new __cosim_s10__[__xlx_in1_out_r__tmp_vec.size()];
  for (int i = 0; i < __xlx_in1_out_r__tmp_vec.size(); ++i) {
    ((long long*)__xlx_in1_out_r__input_buffer)[i*2+0] = __xlx_in1_out_r__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_in1_out_r__input_buffer)[i*2+1] = __xlx_in1_out_r__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_in2__tmp_vec
  vector<sc_bv<128> >__xlx_in2__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_in2)[j*16+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_in2)[j*16+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_in2)[j*16+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_in2)[j*16+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_in2)[j*16+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_in2)[j*16+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_in2)[j*16+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_in2)[j*16+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_in2)[j*16+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_in2)[j*16+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_in2)[j*16+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_in2)[j*16+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_in2)[j*16+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_in2)[j*16+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_in2)[j*16+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_in2)[j*16+15];
    __xlx_in2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_in2 = 1;
  int __xlx_offset_param_in2 = 0;
  int __xlx_offset_byte_param_in2 = 0*16;
  __cosim_s10__* __xlx_in2__input_buffer= new __cosim_s10__[__xlx_in2__tmp_vec.size()];
  for (int i = 0; i < __xlx_in2__tmp_vec.size(); ++i) {
    ((long long*)__xlx_in2__input_buffer)[i*2+0] = __xlx_in2__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_in2__input_buffer)[i*2+1] = __xlx_in2__tmp_vec[i].range(127, 64).to_uint64();
  }
  // DUT call
  matmul(__xlx_in1_out_r__input_buffer, __xlx_in2__input_buffer, __xlx_offset_byte_param_in1, __xlx_offset_byte_param_in2, __xlx_offset_byte_param_out_r);
// print __xlx_apatb_param_in1
  sc_bv<128>*__xlx_in1_output_buffer = new sc_bv<128>[__xlx_size_param_in1];
  for (int i = 0; i < __xlx_size_param_in1; ++i) {
    char* start = (char*)(&(__xlx_in1_out_r__input_buffer[__xlx_offset_param_in1]));
    __xlx_in1_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_in1_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_in1; ++i) {
    ((char*)__xlx_apatb_param_in1)[i*16+0] = __xlx_in1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+1] = __xlx_in1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+2] = __xlx_in1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+3] = __xlx_in1_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+4] = __xlx_in1_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+5] = __xlx_in1_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+6] = __xlx_in1_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+7] = __xlx_in1_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+8] = __xlx_in1_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+9] = __xlx_in1_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+10] = __xlx_in1_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+11] = __xlx_in1_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+12] = __xlx_in1_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+13] = __xlx_in1_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+14] = __xlx_in1_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_in1)[i*16+15] = __xlx_in1_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_out_r
  sc_bv<128>*__xlx_out_r_output_buffer = new sc_bv<128>[__xlx_size_param_out_r];
  for (int i = 0; i < __xlx_size_param_out_r; ++i) {
    char* start = (char*)(&(__xlx_in1_out_r__input_buffer[__xlx_offset_param_out_r]));
    __xlx_out_r_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_out_r_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_out_r; ++i) {
    ((char*)__xlx_apatb_param_out_r)[i*16+0] = __xlx_out_r_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+1] = __xlx_out_r_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+2] = __xlx_out_r_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+3] = __xlx_out_r_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+4] = __xlx_out_r_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+5] = __xlx_out_r_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+6] = __xlx_out_r_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+7] = __xlx_out_r_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+8] = __xlx_out_r_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+9] = __xlx_out_r_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+10] = __xlx_out_r_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+11] = __xlx_out_r_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+12] = __xlx_out_r_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+13] = __xlx_out_r_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+14] = __xlx_out_r_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_out_r)[i*16+15] = __xlx_out_r_output_buffer[i].range(127, 120).to_uint();
  }
// print __xlx_apatb_param_in2
  sc_bv<128>*__xlx_in2_output_buffer = new sc_bv<128>[__xlx_size_param_in2];
  for (int i = 0; i < __xlx_size_param_in2; ++i) {
    char* start = (char*)(&(__xlx_in2__input_buffer[__xlx_offset_param_in2]));
    __xlx_in2_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_in2_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_in2; ++i) {
    ((char*)__xlx_apatb_param_in2)[i*16+0] = __xlx_in2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+1] = __xlx_in2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+2] = __xlx_in2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+3] = __xlx_in2_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+4] = __xlx_in2_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+5] = __xlx_in2_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+6] = __xlx_in2_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+7] = __xlx_in2_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+8] = __xlx_in2_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+9] = __xlx_in2_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+10] = __xlx_in2_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+11] = __xlx_in2_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+12] = __xlx_in2_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+13] = __xlx_in2_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+14] = __xlx_in2_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_in2)[i*16+15] = __xlx_in2_output_buffer[i].range(127, 120).to_uint();
  }
}
