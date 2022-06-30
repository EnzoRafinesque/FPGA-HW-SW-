-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matmul_matmul_Pipeline_readB is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem1_AWVALID : OUT STD_LOGIC;
    m_axi_gmem1_AWREADY : IN STD_LOGIC;
    m_axi_gmem1_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WVALID : OUT STD_LOGIC;
    m_axi_gmem1_WREADY : IN STD_LOGIC;
    m_axi_gmem1_WDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem1_WSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_gmem1_WLAST : OUT STD_LOGIC;
    m_axi_gmem1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARVALID : OUT STD_LOGIC;
    m_axi_gmem1_ARREADY : IN STD_LOGIC;
    m_axi_gmem1_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RVALID : IN STD_LOGIC;
    m_axi_gmem1_RREADY : OUT STD_LOGIC;
    m_axi_gmem1_RDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    m_axi_gmem1_RLAST : IN STD_LOGIC;
    m_axi_gmem1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_gmem1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BVALID : IN STD_LOGIC;
    m_axi_gmem1_BREADY : OUT STD_LOGIC;
    m_axi_gmem1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln45 : IN STD_LOGIC_VECTOR (27 downto 0);
    B_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    B_V_ce0 : OUT STD_LOGIC;
    B_V_we0 : OUT STD_LOGIC;
    B_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_ext_blocking_n : OUT STD_LOGIC;
    ap_str_blocking_n : OUT STD_LOGIC;
    ap_int_blocking_n : OUT STD_LOGIC );
end;


architecture behav of matmul_matmul_Pipeline_readB is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv496_lc_1 : STD_LOGIC_VECTOR (495 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv11_20 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal icmp_ln45_reg_319 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln51_reg_323 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op32_read_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_predicate_op34_read_state4 : BOOLEAN;
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal gmem1_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_predicate_op38_read_state5 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln45_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_reg_319_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln51_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln51_reg_323_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal gmem1_addr_read_reg_332 : STD_LOGIC_VECTOR (127 downto 0);
    signal gmem1_addr_read_1_reg_337 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_predicate_op33_read_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal gmem1_addr_read_2_reg_342 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal shiftreg2_cast_fu_176_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal gmem1_addr_read_3_reg_352 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_phi_mux_empty_27_phi_fu_107_p4 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln51_2_fu_241_p5 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_phi_reg_pp0_iter1_empty_27_reg_104 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_phi_reg_pp0_iter0_empty_27_reg_104 : STD_LOGIC_VECTOR (511 downto 0);
    signal zext_ln51_fu_236_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shiftreg2_fu_64 : STD_LOGIC_VECTOR (495 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal j_fu_68 : STD_LOGIC_VECTOR (10 downto 0);
    signal j_4_fu_265_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_fu_210_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal itr_1_fu_76 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln45_fu_146_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_itr : STD_LOGIC_VECTOR (10 downto 0);
    signal empty_28_fu_152_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln47_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_3_fu_198_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln49_fu_192_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln51_fu_218_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_cast_fu_222_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln47_fu_206_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln51_fu_230_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
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


    ap_phi_reg_pp0_iter1_empty_27_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln51_reg_323 = ap_const_lv1_0) and (icmp_ln45_reg_319 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                ap_phi_reg_pp0_iter1_empty_27_reg_104 <= shiftreg2_cast_fu_176_p1;
            elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001))) then 
                ap_phi_reg_pp0_iter1_empty_27_reg_104 <= ap_phi_reg_pp0_iter0_empty_27_reg_104;
            end if; 
        end if;
    end process;

    i_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_fu_72 <= ap_const_lv32_0;
            elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                i_fu_72 <= i_2_fu_210_p3;
            end if; 
        end if;
    end process;

    itr_1_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln45_fu_140_p2 = ap_const_lv1_0))) then 
                    itr_1_fu_76 <= add_ln45_fu_146_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    itr_1_fu_76 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j_fu_68 <= ap_const_lv11_0;
            elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                j_fu_68 <= j_4_fu_265_p2;
            end if; 
        end if;
    end process;

    shiftreg2_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                shiftreg2_fu_64 <= ap_const_lv496_lc_1;
            elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                shiftreg2_fu_64 <= ap_phi_mux_empty_27_phi_fu_107_p4(511 downto 16);
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_predicate_op33_read_state3 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then
                gmem1_addr_read_1_reg_337 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_predicate_op34_read_state4 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001))) then
                gmem1_addr_read_2_reg_342 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op38_read_state5 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                gmem1_addr_read_3_reg_352 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                gmem1_addr_read_reg_332 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln45_reg_319 <= icmp_ln45_fu_140_p2;
                icmp_ln45_reg_319_pp0_iter1_reg <= icmp_ln45_reg_319;
                icmp_ln51_reg_323_pp0_iter1_reg <= icmp_ln51_reg_323;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln45_fu_140_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln51_reg_323 <= icmp_ln51_fu_156_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_condition_exit_pp0_iter0_stage1, ap_block_pp0_stage3_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_block_pp0_stage2_subdone, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
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
    B_V_address0 <= zext_ln51_fu_236_p1(10 - 1 downto 0);

    B_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            B_V_ce0 <= ap_const_logic_1;
        else 
            B_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_V_d0 <= ap_phi_mux_empty_27_phi_fu_107_p4(16 - 1 downto 0);

    B_V_we0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            B_V_we0 <= ap_const_logic_1;
        else 
            B_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln45_fu_146_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_itr) + unsigned(ap_const_lv11_1));
    add_ln49_fu_192_p2 <= std_logic_vector(unsigned(i_fu_72) + unsigned(ap_const_lv32_1));
    add_ln51_fu_230_p2 <= std_logic_vector(unsigned(tmp_3_cast_fu_222_p3) + unsigned(trunc_ln47_fu_206_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem1_RVALID, ap_predicate_op38_read_state5)
    begin
                ap_block_pp0_stage0_11001 <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op38_read_state5 = ap_const_boolean_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_gmem1_RVALID, ap_predicate_op38_read_state5)
    begin
                ap_block_pp0_stage0_subdone <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op38_read_state5 = ap_const_boolean_1));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_enable_reg_pp0_iter0, m_axi_gmem1_RVALID, ap_predicate_op32_read_state2)
    begin
                ap_block_pp0_stage1_11001 <= ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, m_axi_gmem1_RVALID, ap_predicate_op32_read_state2)
    begin
                ap_block_pp0_stage1_subdone <= ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;

        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage2_11001_assign_proc : process(ap_enable_reg_pp0_iter0, m_axi_gmem1_RVALID, ap_predicate_op33_read_state3)
    begin
                ap_block_pp0_stage2_11001 <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_predicate_op33_read_state3 = ap_const_boolean_1));
    end process;


    ap_block_pp0_stage2_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, m_axi_gmem1_RVALID, ap_predicate_op33_read_state3)
    begin
                ap_block_pp0_stage2_subdone <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_predicate_op33_read_state3 = ap_const_boolean_1));
    end process;

        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage3_11001_assign_proc : process(ap_enable_reg_pp0_iter0, m_axi_gmem1_RVALID, ap_predicate_op34_read_state4)
    begin
                ap_block_pp0_stage3_11001 <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_predicate_op34_read_state4 = ap_const_boolean_1));
    end process;


    ap_block_pp0_stage3_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, m_axi_gmem1_RVALID, ap_predicate_op34_read_state4)
    begin
                ap_block_pp0_stage3_subdone <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_predicate_op34_read_state4 = ap_const_boolean_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage1_iter0_assign_proc : process(m_axi_gmem1_RVALID, ap_predicate_op32_read_state2)
    begin
                ap_block_state2_pp0_stage1_iter0 <= ((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (m_axi_gmem1_RVALID = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage2_iter0_assign_proc : process(m_axi_gmem1_RVALID, ap_predicate_op33_read_state3)
    begin
                ap_block_state3_pp0_stage2_iter0 <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_predicate_op33_read_state3 = ap_const_boolean_1));
    end process;


    ap_block_state4_pp0_stage3_iter0_assign_proc : process(m_axi_gmem1_RVALID, ap_predicate_op34_read_state4)
    begin
                ap_block_state4_pp0_stage3_iter0 <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_predicate_op34_read_state4 = ap_const_boolean_1));
    end process;


    ap_block_state5_pp0_stage0_iter1_assign_proc : process(m_axi_gmem1_RVALID, ap_predicate_op38_read_state5)
    begin
                ap_block_state5_pp0_stage0_iter1 <= ((m_axi_gmem1_RVALID = ap_const_logic_0) and (ap_predicate_op38_read_state5 = ap_const_boolean_1));
    end process;

        ap_block_state6_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, icmp_ln45_reg_319, ap_block_pp0_stage1_subdone)
    begin
        if (((icmp_ln45_reg_319 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
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

    ap_ext_blocking_cur_n <= (gmem1_blk_n_R);
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
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_phi_mux_empty_27_phi_fu_107_p4_assign_proc : process(icmp_ln45_reg_319_pp0_iter1_reg, icmp_ln51_reg_323_pp0_iter1_reg, or_ln51_2_fu_241_p5, ap_phi_reg_pp0_iter1_empty_27_reg_104)
    begin
        if (((icmp_ln51_reg_323_pp0_iter1_reg = ap_const_lv1_1) and (icmp_ln45_reg_319_pp0_iter1_reg = ap_const_lv1_0))) then 
            ap_phi_mux_empty_27_phi_fu_107_p4 <= or_ln51_2_fu_241_p5;
        else 
            ap_phi_mux_empty_27_phi_fu_107_p4 <= ap_phi_reg_pp0_iter1_empty_27_reg_104;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_empty_27_reg_104 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op32_read_state2_assign_proc : process(icmp_ln45_reg_319, icmp_ln51_reg_323)
    begin
                ap_predicate_op32_read_state2 <= ((icmp_ln51_reg_323 = ap_const_lv1_1) and (icmp_ln45_reg_319 = ap_const_lv1_0));
    end process;


    ap_predicate_op33_read_state3_assign_proc : process(icmp_ln45_reg_319, icmp_ln51_reg_323)
    begin
                ap_predicate_op33_read_state3 <= ((icmp_ln51_reg_323 = ap_const_lv1_1) and (icmp_ln45_reg_319 = ap_const_lv1_0));
    end process;


    ap_predicate_op34_read_state4_assign_proc : process(icmp_ln45_reg_319, icmp_ln51_reg_323)
    begin
                ap_predicate_op34_read_state4 <= ((icmp_ln51_reg_323 = ap_const_lv1_1) and (icmp_ln45_reg_319 = ap_const_lv1_0));
    end process;


    ap_predicate_op38_read_state5_assign_proc : process(icmp_ln45_reg_319, icmp_ln51_reg_323)
    begin
                ap_predicate_op38_read_state5 <= ((icmp_ln51_reg_323 = ap_const_lv1_1) and (icmp_ln45_reg_319 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_itr_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, itr_1_fu_76)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_itr <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_itr <= itr_1_fu_76;
        end if; 
    end process;

    ap_str_blocking_n <= (ap_const_logic_1 and ap_const_logic_1);
    empty_28_fu_152_p1 <= ap_sig_allocacmp_itr(5 - 1 downto 0);

    gmem1_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, m_axi_gmem1_RVALID, icmp_ln45_reg_319, icmp_ln51_reg_323, ap_predicate_op32_read_state2, ap_CS_fsm_pp0_stage3, ap_predicate_op34_read_state4, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3, ap_block_pp0_stage0)
    begin
        if ((((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1)) or ((icmp_ln51_reg_323 = ap_const_lv1_1) and (icmp_ln45_reg_319 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((icmp_ln51_reg_323 = ap_const_lv1_1) and (icmp_ln45_reg_319 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_predicate_op34_read_state4 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage3)))) then 
            gmem1_blk_n_R <= m_axi_gmem1_RVALID;
        else 
            gmem1_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    i_2_fu_210_p3 <= 
        add_ln49_fu_192_p2 when (icmp_ln47_fu_186_p2(0) = '1') else 
        i_fu_72;
    icmp_ln45_fu_140_p2 <= "1" when (ap_sig_allocacmp_itr = ap_const_lv11_400) else "0";
    icmp_ln47_fu_186_p2 <= "1" when (j_fu_68 = ap_const_lv11_20) else "0";
    icmp_ln51_fu_156_p2 <= "1" when (empty_28_fu_152_p1 = ap_const_lv5_0) else "0";
    j_3_fu_198_p3 <= 
        ap_const_lv11_0 when (icmp_ln47_fu_186_p2(0) = '1') else 
        j_fu_68;
    j_4_fu_265_p2 <= std_logic_vector(unsigned(j_3_fu_198_p3) + unsigned(ap_const_lv11_1));
    m_axi_gmem1_ARADDR <= ap_const_lv32_0;
    m_axi_gmem1_ARBURST <= ap_const_lv2_0;
    m_axi_gmem1_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem1_ARID <= ap_const_lv1_0;
    m_axi_gmem1_ARLEN <= ap_const_lv32_0;
    m_axi_gmem1_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem1_ARPROT <= ap_const_lv3_0;
    m_axi_gmem1_ARQOS <= ap_const_lv4_0;
    m_axi_gmem1_ARREGION <= ap_const_lv4_0;
    m_axi_gmem1_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem1_ARUSER <= ap_const_lv1_0;
    m_axi_gmem1_ARVALID <= ap_const_logic_0;
    m_axi_gmem1_AWADDR <= ap_const_lv32_0;
    m_axi_gmem1_AWBURST <= ap_const_lv2_0;
    m_axi_gmem1_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem1_AWID <= ap_const_lv1_0;
    m_axi_gmem1_AWLEN <= ap_const_lv32_0;
    m_axi_gmem1_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem1_AWPROT <= ap_const_lv3_0;
    m_axi_gmem1_AWQOS <= ap_const_lv4_0;
    m_axi_gmem1_AWREGION <= ap_const_lv4_0;
    m_axi_gmem1_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem1_AWUSER <= ap_const_lv1_0;
    m_axi_gmem1_AWVALID <= ap_const_logic_0;
    m_axi_gmem1_BREADY <= ap_const_logic_0;

    m_axi_gmem1_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_predicate_op32_read_state2, ap_CS_fsm_pp0_stage3, ap_predicate_op34_read_state4, ap_CS_fsm_pp0_stage2, ap_predicate_op38_read_state5, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001, ap_predicate_op33_read_state3, ap_block_pp0_stage2_11001, ap_block_pp0_stage3_11001)
    begin
        if ((((ap_predicate_op32_read_state2 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op38_read_state5 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_predicate_op33_read_state3 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_predicate_op34_read_state4 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001)))) then 
            m_axi_gmem1_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem1_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem1_WDATA <= ap_const_lv128_lc_1;
    m_axi_gmem1_WID <= ap_const_lv1_0;
    m_axi_gmem1_WLAST <= ap_const_logic_0;
    m_axi_gmem1_WSTRB <= ap_const_lv16_0;
    m_axi_gmem1_WUSER <= ap_const_lv1_0;
    m_axi_gmem1_WVALID <= ap_const_logic_0;
    or_ln51_2_fu_241_p5 <= (((gmem1_addr_read_3_reg_352 & gmem1_addr_read_2_reg_342) & gmem1_addr_read_1_reg_337) & gmem1_addr_read_reg_332);
    shiftreg2_cast_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shiftreg2_fu_64),512));
    tmp_3_cast_fu_222_p3 <= (trunc_ln51_fu_218_p1 & ap_const_lv5_0);
    trunc_ln47_fu_206_p1 <= j_3_fu_198_p3(10 - 1 downto 0);
    trunc_ln51_fu_218_p1 <= i_2_fu_210_p3(5 - 1 downto 0);
    zext_ln51_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln51_fu_230_p2),32));
end behav;
