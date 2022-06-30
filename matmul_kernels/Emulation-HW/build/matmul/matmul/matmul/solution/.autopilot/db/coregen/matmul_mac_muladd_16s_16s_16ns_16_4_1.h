// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __matmul_mac_muladd_16s_16s_16ns_16_4_1__HH__
#define __matmul_mac_muladd_16s_16s_16ns_16_4_1__HH__
#include "matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(matmul_mac_muladd_16s_16s_16ns_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0 matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U;

    SC_CTOR(matmul_mac_muladd_16s_16s_16ns_16_4_1):  matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U ("matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U") {
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.clk(clk);
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.rst(reset);
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.ce(ce);
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in0(din0);
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in1(din1);
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.in2(din2);
        matmul_mac_muladd_16s_16s_16ns_16_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
