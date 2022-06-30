set SynModuleInfo {
  {SRCNAME matmul_Pipeline_readA MODELNAME matmul_Pipeline_readA RTLNAME matmul_matmul_Pipeline_readA
    SUBMODULES {
      {MODELNAME matmul_flow_control_loop_pipe_sequential_init RTLNAME matmul_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matmul_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matmul_Pipeline_readB MODELNAME matmul_Pipeline_readB RTLNAME matmul_matmul_Pipeline_readB}
  {SRCNAME matmul_Pipeline_nopart1_nopart2 MODELNAME matmul_Pipeline_nopart1_nopart2 RTLNAME matmul_matmul_Pipeline_nopart1_nopart2
    SUBMODULES {
      {MODELNAME matmul_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME matmul_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matmul_Pipeline_writeC MODELNAME matmul_Pipeline_writeC RTLNAME matmul_matmul_Pipeline_writeC}
  {SRCNAME matmul MODELNAME matmul RTLNAME matmul IS_TOP 1
    SUBMODULES {
      {MODELNAME matmul_A_V_RAM_AUTO_1R1W RTLNAME matmul_A_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_B_V_RAM_1WNR_AUTO_1R1W RTLNAME matmul_B_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_C_V_RAM_AUTO_1R1W RTLNAME matmul_C_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matmul_control_s_axi RTLNAME matmul_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME matmul_gmem0_m_axi RTLNAME matmul_gmem0_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME matmul_gmem1_m_axi RTLNAME matmul_gmem1_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
