-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matmul_matmul_Pipeline_writeC is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem0_AWVALID : OUT STD_LOGIC;
    m_axi_gmem0_AWREADY : IN STD_LOGIC;
    m_axi_gmem0_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_WVALID : OUT STD_LOGIC;
    m_axi_gmem0_WREADY : IN STD_LOGIC;
    m_axi_gmem0_WDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem0_WSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_gmem0_WLAST : OUT STD_LOGIC;
    m_axi_gmem0_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_ARVALID : OUT STD_LOGIC;
    m_axi_gmem0_ARREADY : IN STD_LOGIC;
    m_axi_gmem0_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem0_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem0_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem0_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RVALID : IN STD_LOGIC;
    m_axi_gmem0_RREADY : OUT STD_LOGIC;
    m_axi_gmem0_RDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem0_RLAST : IN STD_LOGIC;
    m_axi_gmem0_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_gmem0_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_BVALID : IN STD_LOGIC;
    m_axi_gmem0_BREADY : OUT STD_LOGIC;
    m_axi_gmem0_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem0_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem0_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln90 : IN STD_LOGIC_VECTOR (27 downto 0);
    C_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    C_V_ce0 : OUT STD_LOGIC;
    C_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of matmul_matmul_Pipeline_writeC is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv496_lc_1 : STD_LOGIC_VECTOR (495 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011111111";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv32_17F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101111111";
    constant ap_const_lv32_180 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110000000";
    constant ap_const_lv32_1EF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111101111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal icmp_ln90_reg_394 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln96_reg_403 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op52_write_state3 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage2 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_predicate_op62_write_state4 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal gmem0_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_predicate_op63_write_state5 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln90_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state6_io : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln96_fu_256_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal C_V_load_reg_415 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln96_1_reg_420 : STD_LOGIC_VECTOR (127 downto 0);
    signal trunc_ln96_2_reg_425 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_s_reg_430 : STD_LOGIC_VECTOR (111 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal zext_ln96_fu_251_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln96_5_fu_289_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_pp0_stage2_01001 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal ap_block_pp0_stage3_01001 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln96_3_fu_354_p3 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_pp0_stage1_01001 : BOOLEAN;
    signal phi_ln96_fu_82 : STD_LOGIC_VECTOR (495 downto 0);
    signal select_ln96_fu_342_p3 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_86 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_213_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_fu_90 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_2_fu_262_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal itr_fu_94 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln90_fu_185_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln92_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln94_fu_207_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln96_fu_221_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_1_fu_233_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_40_cast_fu_225_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln96_4_fu_241_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln96_fu_245_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_26_fu_197_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_1_fu_324_p4 : STD_LOGIC_VECTOR (479 downto 0);
    signal tmp_2_fu_334_p3 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_ext_blocking_cur_n : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component matmul_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component matmul_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage2,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage2)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_fu_86 <= ap_const_lv32_0;
            elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln90_fu_179_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                i_fu_86 <= i_1_fu_213_p3;
            end if; 
        end if;
    end process;

    itr_fu_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                itr_fu_94 <= ap_const_lv9_0;
            elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln90_fu_179_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                itr_fu_94 <= add_ln90_fu_185_p2;
            end if; 
        end if;
    end process;

    j_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j_fu_90 <= ap_const_lv32_0;
            elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln90_fu_179_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                j_fu_90 <= j_2_fu_262_p2;
            end if; 
        end if;
    end process;

    phi_ln96_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                phi_ln96_fu_82 <= ap_const_lv496_lc_1;
            elsif (((icmp_ln90_reg_394 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then 
                phi_ln96_fu_82 <= select_ln96_fu_342_p3;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln90_reg_394 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then
                C_V_load_reg_415 <= C_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                icmp_ln90_reg_394 <= icmp_ln90_fu_179_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln90_fu_179_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                icmp_ln96_reg_403 <= icmp_ln96_fu_256_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln96_reg_403 = ap_const_lv1_1) and (icmp_ln90_reg_394 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then
                tmp_s_reg_430 <= phi_ln96_fu_82(495 downto 384);
                trunc_ln96_1_reg_420 <= phi_ln96_fu_82(255 downto 128);
                trunc_ln96_2_reg_425 <= phi_ln96_fu_82(383 downto 256);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage2_subdone, ap_condition_exit_pp0_iter0_stage2, ap_block_pp0_stage3_subdone, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage2)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    C_V_address0 <= zext_ln96_fu_251_p1(8 - 1 downto 0);

    C_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            C_V_ce0 <= ap_const_logic_1;
        else 
            C_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln90_fu_185_p2 <= std_logic_vector(unsigned(itr_fu_94) + unsigned(ap_const_lv9_1));
    add_ln94_fu_207_p2 <= std_logic_vector(unsigned(i_fu_86) + unsigned(ap_const_lv32_1));
    add_ln96_fu_245_p2 <= std_logic_vector(unsigned(tmp_40_cast_fu_225_p3) + unsigned(trunc_ln96_4_fu_241_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state5_io));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state5_io));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state6_io)
    begin
                ap_block_pp0_stage1_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state6_io));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state6_io)
    begin
                ap_block_pp0_stage1_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state6_io));
    end process;

        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage2_11001_assign_proc : process(ap_enable_reg_pp0_iter0, ap_block_state3_io)
    begin
                ap_block_pp0_stage2_11001 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_io));
    end process;


    ap_block_pp0_stage2_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, ap_block_state3_io)
    begin
                ap_block_pp0_stage2_subdone <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_io));
    end process;

        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage3_11001_assign_proc : process(ap_enable_reg_pp0_iter0, ap_block_state4_io)
    begin
                ap_block_pp0_stage3_11001 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_io));
    end process;


    ap_block_pp0_stage3_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, ap_block_state4_io)
    begin
                ap_block_pp0_stage3_subdone <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_io));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_io_assign_proc : process(m_axi_gmem0_WREADY, ap_predicate_op52_write_state3)
    begin
                ap_block_state3_io <= ((ap_predicate_op52_write_state3 = ap_const_boolean_1) and (m_axi_gmem0_WREADY = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(m_axi_gmem0_WREADY, ap_predicate_op62_write_state4)
    begin
                ap_block_state4_io <= ((m_axi_gmem0_WREADY = ap_const_logic_0) and (ap_predicate_op62_write_state4 = ap_const_boolean_1));
    end process;

        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_io_assign_proc : process(m_axi_gmem0_WREADY, ap_predicate_op63_write_state5)
    begin
                ap_block_state5_io <= ((m_axi_gmem0_WREADY = ap_const_logic_0) and (ap_predicate_op63_write_state5 = ap_const_boolean_1));
    end process;

        ap_block_state5_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_io_assign_proc : process(m_axi_gmem0_WREADY, icmp_ln96_reg_403)
    begin
                ap_block_state6_io <= ((icmp_ln96_reg_403 = ap_const_lv1_1) and (m_axi_gmem0_WREADY = ap_const_logic_0));
    end process;

        ap_block_state6_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage2_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, icmp_ln90_reg_394, ap_block_pp0_stage2_subdone)
    begin
        if (((icmp_ln90_reg_394 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_subdone))) then 
            ap_condition_exit_pp0_iter0_stage2 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage2_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;

    ap_ext_blocking_cur_n <= (gmem0_blk_n_W);
    ap_ext_blocking_n <= (ap_ext_blocking_cur_n and ap_const_logic_1);

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_int_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage2;

    ap_predicate_op52_write_state3_assign_proc : process(icmp_ln90_reg_394, icmp_ln96_reg_403)
    begin
                ap_predicate_op52_write_state3 <= ((icmp_ln96_reg_403 = ap_const_lv1_1) and (icmp_ln90_reg_394 = ap_const_lv1_0));
    end process;


    ap_predicate_op62_write_state4_assign_proc : process(icmp_ln90_reg_394, icmp_ln96_reg_403)
    begin
                ap_predicate_op62_write_state4 <= ((icmp_ln96_reg_403 = ap_const_lv1_1) and (icmp_ln90_reg_394 = ap_const_lv1_0));
    end process;


    ap_predicate_op63_write_state5_assign_proc : process(icmp_ln90_reg_394, icmp_ln96_reg_403)
    begin
                ap_predicate_op63_write_state5 <= ((icmp_ln96_reg_403 = ap_const_lv1_1) and (icmp_ln90_reg_394 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    empty_26_fu_197_p1 <= itr_fu_94(5 - 1 downto 0);

    gmem0_blk_n_W_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage2, m_axi_gmem0_WREADY, icmp_ln90_reg_394, icmp_ln96_reg_403, ap_predicate_op52_write_state3, ap_CS_fsm_pp0_stage3, ap_predicate_op62_write_state4, ap_block_pp0_stage2, ap_block_pp0_stage3, ap_block_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1)
    begin
        if ((((ap_predicate_op52_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2)) or ((icmp_ln96_reg_403 = ap_const_lv1_1) and (icmp_ln90_reg_394 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((icmp_ln96_reg_403 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_predicate_op62_write_state4 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage3)))) then 
            gmem0_blk_n_W <= m_axi_gmem0_WREADY;
        else 
            gmem0_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    i_1_fu_213_p3 <= 
        add_ln94_fu_207_p2 when (icmp_ln92_fu_201_p2(0) = '1') else 
        i_fu_86;
    icmp_ln90_fu_179_p2 <= "1" when (itr_fu_94 = ap_const_lv9_100) else "0";
    icmp_ln92_fu_201_p2 <= "1" when (j_fu_90 = ap_const_lv32_10) else "0";
    icmp_ln96_fu_256_p2 <= "1" when (empty_26_fu_197_p1 = ap_const_lv5_1F) else "0";
    j_1_fu_233_p3 <= 
        ap_const_lv32_0 when (icmp_ln92_fu_201_p2(0) = '1') else 
        j_fu_90;
    j_2_fu_262_p2 <= std_logic_vector(unsigned(j_1_fu_233_p3) + unsigned(ap_const_lv32_1));
    m_axi_gmem0_ARADDR <= ap_const_lv32_0;
    m_axi_gmem0_ARBURST <= ap_const_lv2_0;
    m_axi_gmem0_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem0_ARID <= ap_const_lv1_0;
    m_axi_gmem0_ARLEN <= ap_const_lv32_0;
    m_axi_gmem0_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem0_ARPROT <= ap_const_lv3_0;
    m_axi_gmem0_ARQOS <= ap_const_lv4_0;
    m_axi_gmem0_ARREGION <= ap_const_lv4_0;
    m_axi_gmem0_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem0_ARUSER <= ap_const_lv1_0;
    m_axi_gmem0_ARVALID <= ap_const_logic_0;
    m_axi_gmem0_AWADDR <= ap_const_lv32_0;
    m_axi_gmem0_AWBURST <= ap_const_lv2_0;
    m_axi_gmem0_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem0_AWID <= ap_const_lv1_0;
    m_axi_gmem0_AWLEN <= ap_const_lv32_0;
    m_axi_gmem0_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem0_AWPROT <= ap_const_lv3_0;
    m_axi_gmem0_AWQOS <= ap_const_lv4_0;
    m_axi_gmem0_AWREGION <= ap_const_lv4_0;
    m_axi_gmem0_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem0_AWUSER <= ap_const_lv1_0;
    m_axi_gmem0_AWVALID <= ap_const_logic_0;
    m_axi_gmem0_BREADY <= ap_const_logic_0;
    m_axi_gmem0_RREADY <= ap_const_logic_0;

    m_axi_gmem0_WDATA_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage2, icmp_ln96_reg_403, ap_predicate_op52_write_state3, ap_CS_fsm_pp0_stage3, ap_predicate_op62_write_state4, ap_CS_fsm_pp0_stage1, ap_predicate_op63_write_state5, trunc_ln96_1_reg_420, trunc_ln96_2_reg_425, trunc_ln96_5_fu_289_p1, ap_block_pp0_stage2_01001, ap_block_pp0_stage3_01001, ap_block_pp0_stage0_01001, trunc_ln96_3_fu_354_p3, ap_block_pp0_stage1_01001)
    begin
        if (((icmp_ln96_reg_403 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_01001))) then 
            m_axi_gmem0_WDATA <= trunc_ln96_3_fu_354_p3;
        elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op63_write_state5 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001))) then 
            m_axi_gmem0_WDATA <= trunc_ln96_2_reg_425;
        elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_predicate_op62_write_state4 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage3_01001))) then 
            m_axi_gmem0_WDATA <= trunc_ln96_1_reg_420;
        elsif (((ap_predicate_op52_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_01001))) then 
            m_axi_gmem0_WDATA <= trunc_ln96_5_fu_289_p1;
        else 
            m_axi_gmem0_WDATA <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    m_axi_gmem0_WID <= ap_const_lv1_0;
    m_axi_gmem0_WLAST <= ap_const_logic_0;
    m_axi_gmem0_WSTRB <= ap_const_lv16_FFFF;
    m_axi_gmem0_WUSER <= ap_const_lv1_0;

    m_axi_gmem0_WVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage2, icmp_ln96_reg_403, ap_predicate_op52_write_state3, ap_CS_fsm_pp0_stage3, ap_predicate_op62_write_state4, ap_CS_fsm_pp0_stage1, ap_predicate_op63_write_state5, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_predicate_op52_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001)) or ((icmp_ln96_reg_403 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op63_write_state5 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_predicate_op62_write_state4 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001)))) then 
            m_axi_gmem0_WVALID <= ap_const_logic_1;
        else 
            m_axi_gmem0_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    select_ln96_fu_342_p3 <= 
        ap_const_lv496_lc_1 when (icmp_ln96_reg_403(0) = '1') else 
        tmp_2_fu_334_p3;
    tmp_1_fu_324_p4 <= phi_ln96_fu_82(495 downto 16);
    tmp_2_fu_334_p3 <= (C_V_q0 & tmp_1_fu_324_p4);
    tmp_40_cast_fu_225_p3 <= (trunc_ln96_fu_221_p1 & ap_const_lv4_0);
    trunc_ln96_3_fu_354_p3 <= (C_V_load_reg_415 & tmp_s_reg_430);
    trunc_ln96_4_fu_241_p1 <= j_1_fu_233_p3(8 - 1 downto 0);
    trunc_ln96_5_fu_289_p1 <= phi_ln96_fu_82(128 - 1 downto 0);
    trunc_ln96_fu_221_p1 <= i_1_fu_213_p3(4 - 1 downto 0);
    zext_ln96_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln96_fu_245_p2),32));
end behav;
