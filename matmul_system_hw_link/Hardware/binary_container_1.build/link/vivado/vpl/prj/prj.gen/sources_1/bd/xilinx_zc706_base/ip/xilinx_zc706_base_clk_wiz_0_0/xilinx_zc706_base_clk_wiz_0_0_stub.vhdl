-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Jun 16 12:55:32 2022
-- Host        : mdu-virtual-machine running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top xilinx_zc706_base_clk_wiz_0_0 -prefix
--               xilinx_zc706_base_clk_wiz_0_0_ xilinx_zc706_base_clk_wiz_0_0_stub.vhdl
-- Design      : xilinx_zc706_base_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xilinx_zc706_base_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    clk_out4 : out STD_LOGIC;
    clk_out5 : out STD_LOGIC;
    clk_out6 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end xilinx_zc706_base_clk_wiz_0_0;

architecture stub of xilinx_zc706_base_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,clk_out3,clk_out4,clk_out5,clk_out6,resetn,locked,clk_in1";
begin
end;
