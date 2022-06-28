//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Jun 24 10:51:38 2022
//Host        : mdu-virtual-machine running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target xilinx_zc706_base.bd
//Design      : xilinx_zc706_base
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_GGBKXZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [1:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [1:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [1:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [1:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [1:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [1:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[1:0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  xilinx_zc706_base_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[1:0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[1:0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_104RENT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [3:0]s00_couplers_to_auto_us_ARREGION;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [3:0]s00_couplers_to_auto_us_AWREGION;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  xilinx_zc706_base_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_us_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_us_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_2WZ361
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  xilinx_zc706_base_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_CJUHIY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  xilinx_zc706_base_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_1TOEHTK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s01_couplers_ARQOS;
  wire auto_us_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s01_couplers_ARSIZE;
  wire auto_us_df_to_s01_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s01_couplers_AWQOS;
  wire auto_us_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s01_couplers_AWSIZE;
  wire auto_us_df_to_s01_couplers_AWVALID;
  wire auto_us_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_df_to_s01_couplers_BRESP;
  wire auto_us_df_to_s01_couplers_BVALID;
  wire [63:0]auto_us_df_to_s01_couplers_RDATA;
  wire auto_us_df_to_s01_couplers_RLAST;
  wire auto_us_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_df_to_s01_couplers_RRESP;
  wire auto_us_df_to_s01_couplers_RVALID;
  wire [63:0]auto_us_df_to_s01_couplers_WDATA;
  wire auto_us_df_to_s01_couplers_WLAST;
  wire auto_us_df_to_s01_couplers_WREADY;
  wire [7:0]auto_us_df_to_s01_couplers_WSTRB;
  wire auto_us_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [1:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [31:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [1:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [31:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [31:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [3:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [31:0]s01_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_df_ARCACHE;
  wire [7:0]s01_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s01_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_df_ARQOS;
  wire s01_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_df_ARSIZE;
  wire s01_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s01_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_df_AWCACHE;
  wire [7:0]s01_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_df_AWQOS;
  wire s01_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_df_AWSIZE;
  wire s01_regslice_to_auto_us_df_AWVALID;
  wire s01_regslice_to_auto_us_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_df_BRESP;
  wire s01_regslice_to_auto_us_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_df_RDATA;
  wire s01_regslice_to_auto_us_df_RLAST;
  wire s01_regslice_to_auto_us_df_RREADY;
  wire [1:0]s01_regslice_to_auto_us_df_RRESP;
  wire s01_regslice_to_auto_us_df_RVALID;
  wire [31:0]s01_regslice_to_auto_us_df_WDATA;
  wire s01_regslice_to_auto_us_df_WLAST;
  wire s01_regslice_to_auto_us_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_df_WSTRB;
  wire s01_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_us_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  xilinx_zc706_base_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s01_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s01_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_df_AWVALID),
        .s_axi_bready(s01_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_df_BVALID),
        .s_axi_rdata(s01_regslice_to_auto_us_df_RDATA),
        .s_axi_rlast(s01_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s01_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_us_df_RVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_df_WVALID));
  xilinx_zc706_base_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arlen(s01_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_us_df_ARVALID),
        .m_axi_awaddr(s01_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awlen(s01_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_df_AWVALID),
        .m_axi_bready(s01_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_df_BVALID),
        .m_axi_rdata(s01_regslice_to_auto_us_df_RDATA),
        .m_axi_rlast(s01_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s01_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_us_df_RVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_df_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK[0]),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK[0]),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s02_couplers_imp_QE7YIJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s02_couplers_ARQOS;
  wire auto_us_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s02_couplers_ARSIZE;
  wire auto_us_df_to_s02_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s02_couplers_AWQOS;
  wire auto_us_df_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s02_couplers_AWSIZE;
  wire auto_us_df_to_s02_couplers_AWVALID;
  wire auto_us_df_to_s02_couplers_BREADY;
  wire [1:0]auto_us_df_to_s02_couplers_BRESP;
  wire auto_us_df_to_s02_couplers_BVALID;
  wire [63:0]auto_us_df_to_s02_couplers_RDATA;
  wire auto_us_df_to_s02_couplers_RLAST;
  wire auto_us_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_df_to_s02_couplers_RRESP;
  wire auto_us_df_to_s02_couplers_RVALID;
  wire [63:0]auto_us_df_to_s02_couplers_WDATA;
  wire auto_us_df_to_s02_couplers_WLAST;
  wire auto_us_df_to_s02_couplers_WREADY;
  wire [7:0]auto_us_df_to_s02_couplers_WSTRB;
  wire auto_us_df_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_s02_regslice_ARADDR;
  wire [1:0]s02_couplers_to_s02_regslice_ARBURST;
  wire [3:0]s02_couplers_to_s02_regslice_ARCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_ARLEN;
  wire [1:0]s02_couplers_to_s02_regslice_ARLOCK;
  wire [2:0]s02_couplers_to_s02_regslice_ARPROT;
  wire [3:0]s02_couplers_to_s02_regslice_ARQOS;
  wire s02_couplers_to_s02_regslice_ARREADY;
  wire [3:0]s02_couplers_to_s02_regslice_ARREGION;
  wire [2:0]s02_couplers_to_s02_regslice_ARSIZE;
  wire s02_couplers_to_s02_regslice_ARVALID;
  wire [31:0]s02_couplers_to_s02_regslice_AWADDR;
  wire [1:0]s02_couplers_to_s02_regslice_AWBURST;
  wire [3:0]s02_couplers_to_s02_regslice_AWCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_AWLEN;
  wire [1:0]s02_couplers_to_s02_regslice_AWLOCK;
  wire [2:0]s02_couplers_to_s02_regslice_AWPROT;
  wire [3:0]s02_couplers_to_s02_regslice_AWQOS;
  wire s02_couplers_to_s02_regslice_AWREADY;
  wire [3:0]s02_couplers_to_s02_regslice_AWREGION;
  wire [2:0]s02_couplers_to_s02_regslice_AWSIZE;
  wire s02_couplers_to_s02_regslice_AWVALID;
  wire s02_couplers_to_s02_regslice_BREADY;
  wire [1:0]s02_couplers_to_s02_regslice_BRESP;
  wire s02_couplers_to_s02_regslice_BVALID;
  wire [31:0]s02_couplers_to_s02_regslice_RDATA;
  wire s02_couplers_to_s02_regslice_RLAST;
  wire s02_couplers_to_s02_regslice_RREADY;
  wire [1:0]s02_couplers_to_s02_regslice_RRESP;
  wire s02_couplers_to_s02_regslice_RVALID;
  wire [31:0]s02_couplers_to_s02_regslice_WDATA;
  wire s02_couplers_to_s02_regslice_WLAST;
  wire s02_couplers_to_s02_regslice_WREADY;
  wire [3:0]s02_couplers_to_s02_regslice_WSTRB;
  wire s02_couplers_to_s02_regslice_WVALID;
  wire [31:0]s02_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s02_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s02_regslice_to_auto_us_df_ARCACHE;
  wire [7:0]s02_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s02_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s02_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s02_regslice_to_auto_us_df_ARQOS;
  wire s02_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s02_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s02_regslice_to_auto_us_df_ARSIZE;
  wire s02_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s02_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s02_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s02_regslice_to_auto_us_df_AWCACHE;
  wire [7:0]s02_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s02_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s02_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s02_regslice_to_auto_us_df_AWQOS;
  wire s02_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s02_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s02_regslice_to_auto_us_df_AWSIZE;
  wire s02_regslice_to_auto_us_df_AWVALID;
  wire s02_regslice_to_auto_us_df_BREADY;
  wire [1:0]s02_regslice_to_auto_us_df_BRESP;
  wire s02_regslice_to_auto_us_df_BVALID;
  wire [31:0]s02_regslice_to_auto_us_df_RDATA;
  wire s02_regslice_to_auto_us_df_RLAST;
  wire s02_regslice_to_auto_us_df_RREADY;
  wire [1:0]s02_regslice_to_auto_us_df_RRESP;
  wire s02_regslice_to_auto_us_df_RVALID;
  wire [31:0]s02_regslice_to_auto_us_df_WDATA;
  wire s02_regslice_to_auto_us_df_WLAST;
  wire s02_regslice_to_auto_us_df_WREADY;
  wire [3:0]s02_regslice_to_auto_us_df_WSTRB;
  wire s02_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s02_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_s02_regslice_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_regslice_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_regslice_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_regslice_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_regslice_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_regslice_WREADY;
  assign auto_us_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s02_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_s02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_s02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_s02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_s02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_regslice_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s02_couplers_to_s02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_s02_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s02_couplers_to_s02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_regslice_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_regslice_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_regslice_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_regslice_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_s02_regslice_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_s02_regslice_WVALID = S_AXI_wvalid;
  xilinx_zc706_base_auto_us_df_1 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s02_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s02_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s02_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s02_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s02_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s02_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s02_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s02_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s02_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s02_regslice_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s02_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s02_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s02_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s02_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s02_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s02_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s02_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s02_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s02_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s02_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s02_regslice_to_auto_us_df_AWVALID),
        .s_axi_bready(s02_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s02_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s02_regslice_to_auto_us_df_BVALID),
        .s_axi_rdata(s02_regslice_to_auto_us_df_RDATA),
        .s_axi_rlast(s02_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s02_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s02_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s02_regslice_to_auto_us_df_RVALID),
        .s_axi_wdata(s02_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s02_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s02_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s02_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s02_regslice_to_auto_us_df_WVALID));
  xilinx_zc706_base_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s02_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s02_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s02_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arlen(s02_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s02_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s02_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s02_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s02_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s02_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s02_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s02_regslice_to_auto_us_df_ARVALID),
        .m_axi_awaddr(s02_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s02_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s02_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awlen(s02_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s02_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s02_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s02_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s02_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s02_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s02_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s02_regslice_to_auto_us_df_AWVALID),
        .m_axi_bready(s02_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s02_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s02_regslice_to_auto_us_df_BVALID),
        .m_axi_rdata(s02_regslice_to_auto_us_df_RDATA),
        .m_axi_rlast(s02_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s02_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s02_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s02_regslice_to_auto_us_df_RVALID),
        .m_axi_wdata(s02_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s02_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s02_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s02_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s02_regslice_to_auto_us_df_WVALID),
        .s_axi_araddr(s02_couplers_to_s02_regslice_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_regslice_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_regslice_ARCACHE),
        .s_axi_arlen(s02_couplers_to_s02_regslice_ARLEN),
        .s_axi_arlock(s02_couplers_to_s02_regslice_ARLOCK[0]),
        .s_axi_arprot(s02_couplers_to_s02_regslice_ARPROT),
        .s_axi_arqos(s02_couplers_to_s02_regslice_ARQOS),
        .s_axi_arready(s02_couplers_to_s02_regslice_ARREADY),
        .s_axi_arregion(s02_couplers_to_s02_regslice_ARREGION),
        .s_axi_arsize(s02_couplers_to_s02_regslice_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_regslice_ARVALID),
        .s_axi_awaddr(s02_couplers_to_s02_regslice_AWADDR),
        .s_axi_awburst(s02_couplers_to_s02_regslice_AWBURST),
        .s_axi_awcache(s02_couplers_to_s02_regslice_AWCACHE),
        .s_axi_awlen(s02_couplers_to_s02_regslice_AWLEN),
        .s_axi_awlock(s02_couplers_to_s02_regslice_AWLOCK[0]),
        .s_axi_awprot(s02_couplers_to_s02_regslice_AWPROT),
        .s_axi_awqos(s02_couplers_to_s02_regslice_AWQOS),
        .s_axi_awready(s02_couplers_to_s02_regslice_AWREADY),
        .s_axi_awregion(s02_couplers_to_s02_regslice_AWREGION),
        .s_axi_awsize(s02_couplers_to_s02_regslice_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_s02_regslice_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_regslice_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_regslice_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_regslice_BVALID),
        .s_axi_rdata(s02_couplers_to_s02_regslice_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_regslice_RLAST),
        .s_axi_rready(s02_couplers_to_s02_regslice_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_regslice_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_regslice_RVALID),
        .s_axi_wdata(s02_couplers_to_s02_regslice_WDATA),
        .s_axi_wlast(s02_couplers_to_s02_regslice_WLAST),
        .s_axi_wready(s02_couplers_to_s02_regslice_WREADY),
        .s_axi_wstrb(s02_couplers_to_s02_regslice_WSTRB),
        .s_axi_wvalid(s02_couplers_to_s02_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "xilinx_zc706_base,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xilinx_zc706_base,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=31,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=Vitis,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xilinx_zc706_base.hwdef" *) 
module xilinx_zc706_base
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire [31:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_ARADDR;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_ARREADY;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_ARVALID;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_AWADDR;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_AWREADY;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_AWVALID;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_BREADY;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_BRESP;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_BVALID;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_RDATA;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_RREADY;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_RRESP;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_RVALID;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_WDATA;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_WREADY;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_M00_AXI_WSTRB;
  wire axi_ic_ps7_M_AXI_GP1_M00_AXI_WVALID;
  wire [31:0]axi_intc_0_intr_1_interrupt_concat_dout;
  wire axi_intc_0_irq;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [1:0]axi_interconnect_0_M00_AXI_ARID;
  wire [3:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [1:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [1:0]axi_interconnect_0_M00_AXI_AWID;
  wire [3:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [1:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [1:0]axi_interconnect_0_M00_AXI_WID;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_ARCACHE;
  wire [7:0]axi_vip_0_M_AXI_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_ARQOS;
  wire axi_vip_0_M_AXI_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_ARSIZE;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_AWCACHE;
  wire [7:0]axi_vip_0_M_AXI_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_AWQOS;
  wire axi_vip_0_M_AXI_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_AWSIZE;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RLAST;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WLAST;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_0_clk_out4;
  wire clk_wiz_0_clk_out5;
  wire clk_wiz_0_clk_out6;
  wire clk_wiz_0_locked;
  wire [0:0]irq_const_tieoff_dout;
  wire matmul_1_interrupt;
  wire [31:0]matmul_1_m_axi_gmem0_ARADDR;
  wire [1:0]matmul_1_m_axi_gmem0_ARBURST;
  wire [3:0]matmul_1_m_axi_gmem0_ARCACHE;
  wire [7:0]matmul_1_m_axi_gmem0_ARLEN;
  wire [1:0]matmul_1_m_axi_gmem0_ARLOCK;
  wire [2:0]matmul_1_m_axi_gmem0_ARPROT;
  wire [3:0]matmul_1_m_axi_gmem0_ARQOS;
  wire matmul_1_m_axi_gmem0_ARREADY;
  wire [3:0]matmul_1_m_axi_gmem0_ARREGION;
  wire [2:0]matmul_1_m_axi_gmem0_ARSIZE;
  wire matmul_1_m_axi_gmem0_ARVALID;
  wire [31:0]matmul_1_m_axi_gmem0_AWADDR;
  wire [1:0]matmul_1_m_axi_gmem0_AWBURST;
  wire [3:0]matmul_1_m_axi_gmem0_AWCACHE;
  wire [7:0]matmul_1_m_axi_gmem0_AWLEN;
  wire [1:0]matmul_1_m_axi_gmem0_AWLOCK;
  wire [2:0]matmul_1_m_axi_gmem0_AWPROT;
  wire [3:0]matmul_1_m_axi_gmem0_AWQOS;
  wire matmul_1_m_axi_gmem0_AWREADY;
  wire [3:0]matmul_1_m_axi_gmem0_AWREGION;
  wire [2:0]matmul_1_m_axi_gmem0_AWSIZE;
  wire matmul_1_m_axi_gmem0_AWVALID;
  wire matmul_1_m_axi_gmem0_BREADY;
  wire [1:0]matmul_1_m_axi_gmem0_BRESP;
  wire matmul_1_m_axi_gmem0_BVALID;
  wire [31:0]matmul_1_m_axi_gmem0_RDATA;
  wire matmul_1_m_axi_gmem0_RLAST;
  wire matmul_1_m_axi_gmem0_RREADY;
  wire [1:0]matmul_1_m_axi_gmem0_RRESP;
  wire matmul_1_m_axi_gmem0_RVALID;
  wire [31:0]matmul_1_m_axi_gmem0_WDATA;
  wire matmul_1_m_axi_gmem0_WLAST;
  wire matmul_1_m_axi_gmem0_WREADY;
  wire [3:0]matmul_1_m_axi_gmem0_WSTRB;
  wire matmul_1_m_axi_gmem0_WVALID;
  wire [31:0]matmul_1_m_axi_gmem1_ARADDR;
  wire [1:0]matmul_1_m_axi_gmem1_ARBURST;
  wire [3:0]matmul_1_m_axi_gmem1_ARCACHE;
  wire [7:0]matmul_1_m_axi_gmem1_ARLEN;
  wire [1:0]matmul_1_m_axi_gmem1_ARLOCK;
  wire [2:0]matmul_1_m_axi_gmem1_ARPROT;
  wire [3:0]matmul_1_m_axi_gmem1_ARQOS;
  wire matmul_1_m_axi_gmem1_ARREADY;
  wire [3:0]matmul_1_m_axi_gmem1_ARREGION;
  wire [2:0]matmul_1_m_axi_gmem1_ARSIZE;
  wire matmul_1_m_axi_gmem1_ARVALID;
  wire [31:0]matmul_1_m_axi_gmem1_AWADDR;
  wire [1:0]matmul_1_m_axi_gmem1_AWBURST;
  wire [3:0]matmul_1_m_axi_gmem1_AWCACHE;
  wire [7:0]matmul_1_m_axi_gmem1_AWLEN;
  wire [1:0]matmul_1_m_axi_gmem1_AWLOCK;
  wire [2:0]matmul_1_m_axi_gmem1_AWPROT;
  wire [3:0]matmul_1_m_axi_gmem1_AWQOS;
  wire matmul_1_m_axi_gmem1_AWREADY;
  wire [3:0]matmul_1_m_axi_gmem1_AWREGION;
  wire [2:0]matmul_1_m_axi_gmem1_AWSIZE;
  wire matmul_1_m_axi_gmem1_AWVALID;
  wire matmul_1_m_axi_gmem1_BREADY;
  wire [1:0]matmul_1_m_axi_gmem1_BRESP;
  wire matmul_1_m_axi_gmem1_BVALID;
  wire [31:0]matmul_1_m_axi_gmem1_RDATA;
  wire matmul_1_m_axi_gmem1_RLAST;
  wire matmul_1_m_axi_gmem1_RREADY;
  wire [1:0]matmul_1_m_axi_gmem1_RRESP;
  wire matmul_1_m_axi_gmem1_RVALID;
  wire [31:0]matmul_1_m_axi_gmem1_WDATA;
  wire matmul_1_m_axi_gmem1_WLAST;
  wire matmul_1_m_axi_gmem1_WREADY;
  wire [3:0]matmul_1_m_axi_gmem1_WSTRB;
  wire matmul_1_m_axi_gmem1_WVALID;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [14:0]processing_system7_1_DDR_ADDR;
  wire [2:0]processing_system7_1_DDR_BA;
  wire processing_system7_1_DDR_CAS_N;
  wire processing_system7_1_DDR_CKE;
  wire processing_system7_1_DDR_CK_N;
  wire processing_system7_1_DDR_CK_P;
  wire processing_system7_1_DDR_CS_N;
  wire [3:0]processing_system7_1_DDR_DM;
  wire [31:0]processing_system7_1_DDR_DQ;
  wire [3:0]processing_system7_1_DDR_DQS_N;
  wire [3:0]processing_system7_1_DDR_DQS_P;
  wire processing_system7_1_DDR_ODT;
  wire processing_system7_1_DDR_RAS_N;
  wire processing_system7_1_DDR_RESET_N;
  wire processing_system7_1_DDR_WE_N;
  wire processing_system7_1_FIXED_IO_DDR_VRN;
  wire processing_system7_1_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_1_FIXED_IO_MIO;
  wire processing_system7_1_FIXED_IO_PS_CLK;
  wire processing_system7_1_FIXED_IO_PS_PORB;
  wire processing_system7_1_FIXED_IO_PS_SRSTB;
  wire ps7_FCLK_CLK0;
  wire ps7_FCLK_RESET0_N;
  wire [31:0]ps7_M_AXI_GP0_ARADDR;
  wire [1:0]ps7_M_AXI_GP0_ARBURST;
  wire [3:0]ps7_M_AXI_GP0_ARCACHE;
  wire [11:0]ps7_M_AXI_GP0_ARID;
  wire [3:0]ps7_M_AXI_GP0_ARLEN;
  wire [1:0]ps7_M_AXI_GP0_ARLOCK;
  wire [2:0]ps7_M_AXI_GP0_ARPROT;
  wire [3:0]ps7_M_AXI_GP0_ARQOS;
  wire ps7_M_AXI_GP0_ARREADY;
  wire [2:0]ps7_M_AXI_GP0_ARSIZE;
  wire ps7_M_AXI_GP0_ARVALID;
  wire [31:0]ps7_M_AXI_GP0_AWADDR;
  wire [1:0]ps7_M_AXI_GP0_AWBURST;
  wire [3:0]ps7_M_AXI_GP0_AWCACHE;
  wire [11:0]ps7_M_AXI_GP0_AWID;
  wire [3:0]ps7_M_AXI_GP0_AWLEN;
  wire [1:0]ps7_M_AXI_GP0_AWLOCK;
  wire [2:0]ps7_M_AXI_GP0_AWPROT;
  wire [3:0]ps7_M_AXI_GP0_AWQOS;
  wire ps7_M_AXI_GP0_AWREADY;
  wire [2:0]ps7_M_AXI_GP0_AWSIZE;
  wire ps7_M_AXI_GP0_AWVALID;
  wire [11:0]ps7_M_AXI_GP0_BID;
  wire ps7_M_AXI_GP0_BREADY;
  wire [1:0]ps7_M_AXI_GP0_BRESP;
  wire ps7_M_AXI_GP0_BVALID;
  wire [31:0]ps7_M_AXI_GP0_RDATA;
  wire [11:0]ps7_M_AXI_GP0_RID;
  wire ps7_M_AXI_GP0_RLAST;
  wire ps7_M_AXI_GP0_RREADY;
  wire [1:0]ps7_M_AXI_GP0_RRESP;
  wire ps7_M_AXI_GP0_RVALID;
  wire [31:0]ps7_M_AXI_GP0_WDATA;
  wire [11:0]ps7_M_AXI_GP0_WID;
  wire ps7_M_AXI_GP0_WLAST;
  wire ps7_M_AXI_GP0_WREADY;
  wire [3:0]ps7_M_AXI_GP0_WSTRB;
  wire ps7_M_AXI_GP0_WVALID;
  wire [31:0]ps7_M_AXI_GP1_ARADDR;
  wire [1:0]ps7_M_AXI_GP1_ARBURST;
  wire [3:0]ps7_M_AXI_GP1_ARCACHE;
  wire [11:0]ps7_M_AXI_GP1_ARID;
  wire [3:0]ps7_M_AXI_GP1_ARLEN;
  wire [1:0]ps7_M_AXI_GP1_ARLOCK;
  wire [2:0]ps7_M_AXI_GP1_ARPROT;
  wire [3:0]ps7_M_AXI_GP1_ARQOS;
  wire ps7_M_AXI_GP1_ARREADY;
  wire [2:0]ps7_M_AXI_GP1_ARSIZE;
  wire ps7_M_AXI_GP1_ARVALID;
  wire [31:0]ps7_M_AXI_GP1_AWADDR;
  wire [1:0]ps7_M_AXI_GP1_AWBURST;
  wire [3:0]ps7_M_AXI_GP1_AWCACHE;
  wire [11:0]ps7_M_AXI_GP1_AWID;
  wire [3:0]ps7_M_AXI_GP1_AWLEN;
  wire [1:0]ps7_M_AXI_GP1_AWLOCK;
  wire [2:0]ps7_M_AXI_GP1_AWPROT;
  wire [3:0]ps7_M_AXI_GP1_AWQOS;
  wire ps7_M_AXI_GP1_AWREADY;
  wire [2:0]ps7_M_AXI_GP1_AWSIZE;
  wire ps7_M_AXI_GP1_AWVALID;
  wire [11:0]ps7_M_AXI_GP1_BID;
  wire ps7_M_AXI_GP1_BREADY;
  wire [1:0]ps7_M_AXI_GP1_BRESP;
  wire ps7_M_AXI_GP1_BVALID;
  wire [31:0]ps7_M_AXI_GP1_RDATA;
  wire [11:0]ps7_M_AXI_GP1_RID;
  wire ps7_M_AXI_GP1_RLAST;
  wire ps7_M_AXI_GP1_RREADY;
  wire [1:0]ps7_M_AXI_GP1_RRESP;
  wire ps7_M_AXI_GP1_RVALID;
  wire [31:0]ps7_M_AXI_GP1_WDATA;
  wire [11:0]ps7_M_AXI_GP1_WID;
  wire ps7_M_AXI_GP1_WLAST;
  wire ps7_M_AXI_GP1_WREADY;
  wire [3:0]ps7_M_AXI_GP1_WSTRB;
  wire ps7_M_AXI_GP1_WVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_ARADDR;
  wire ps7_axi_periph_M00_AXI_ARREADY;
  wire ps7_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_AWADDR;
  wire ps7_axi_periph_M00_AXI_AWREADY;
  wire ps7_axi_periph_M00_AXI_AWVALID;
  wire ps7_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_axi_periph_M00_AXI_BRESP;
  wire ps7_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_RDATA;
  wire ps7_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_axi_periph_M00_AXI_RRESP;
  wire ps7_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_axi_periph_M00_AXI_WDATA;
  wire ps7_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_axi_periph_M00_AXI_WSTRB;
  wire ps7_axi_periph_M00_AXI_WVALID;

  xilinx_zc706_base_axi_ic_ps7_M_AXI_GP1_0 axi_ic_ps7_M_AXI_GP1
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_ic_ps7_M_AXI_GP1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_ps7_M_AXI_GP1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_ps7_M_AXI_GP1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_ps7_M_AXI_GP1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_ps7_M_AXI_GP1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_ps7_M_AXI_GP1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_ps7_M_AXI_GP1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_ps7_M_AXI_GP1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_ps7_M_AXI_GP1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_ps7_M_AXI_GP1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_ps7_M_AXI_GP1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_ps7_M_AXI_GP1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_ps7_M_AXI_GP1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_ps7_M_AXI_GP1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_ps7_M_AXI_GP1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_ps7_M_AXI_GP1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_ps7_M_AXI_GP1_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(ps7_M_AXI_GP1_ARADDR),
        .S00_AXI_arburst(ps7_M_AXI_GP1_ARBURST),
        .S00_AXI_arcache(ps7_M_AXI_GP1_ARCACHE),
        .S00_AXI_arid(ps7_M_AXI_GP1_ARID),
        .S00_AXI_arlen(ps7_M_AXI_GP1_ARLEN),
        .S00_AXI_arlock(ps7_M_AXI_GP1_ARLOCK),
        .S00_AXI_arprot(ps7_M_AXI_GP1_ARPROT),
        .S00_AXI_arqos(ps7_M_AXI_GP1_ARQOS),
        .S00_AXI_arready(ps7_M_AXI_GP1_ARREADY),
        .S00_AXI_arsize(ps7_M_AXI_GP1_ARSIZE),
        .S00_AXI_arvalid(ps7_M_AXI_GP1_ARVALID),
        .S00_AXI_awaddr(ps7_M_AXI_GP1_AWADDR),
        .S00_AXI_awburst(ps7_M_AXI_GP1_AWBURST),
        .S00_AXI_awcache(ps7_M_AXI_GP1_AWCACHE),
        .S00_AXI_awid(ps7_M_AXI_GP1_AWID),
        .S00_AXI_awlen(ps7_M_AXI_GP1_AWLEN),
        .S00_AXI_awlock(ps7_M_AXI_GP1_AWLOCK),
        .S00_AXI_awprot(ps7_M_AXI_GP1_AWPROT),
        .S00_AXI_awqos(ps7_M_AXI_GP1_AWQOS),
        .S00_AXI_awready(ps7_M_AXI_GP1_AWREADY),
        .S00_AXI_awsize(ps7_M_AXI_GP1_AWSIZE),
        .S00_AXI_awvalid(ps7_M_AXI_GP1_AWVALID),
        .S00_AXI_bid(ps7_M_AXI_GP1_BID),
        .S00_AXI_bready(ps7_M_AXI_GP1_BREADY),
        .S00_AXI_bresp(ps7_M_AXI_GP1_BRESP),
        .S00_AXI_bvalid(ps7_M_AXI_GP1_BVALID),
        .S00_AXI_rdata(ps7_M_AXI_GP1_RDATA),
        .S00_AXI_rid(ps7_M_AXI_GP1_RID),
        .S00_AXI_rlast(ps7_M_AXI_GP1_RLAST),
        .S00_AXI_rready(ps7_M_AXI_GP1_RREADY),
        .S00_AXI_rresp(ps7_M_AXI_GP1_RRESP),
        .S00_AXI_rvalid(ps7_M_AXI_GP1_RVALID),
        .S00_AXI_wdata(ps7_M_AXI_GP1_WDATA),
        .S00_AXI_wid(ps7_M_AXI_GP1_WID),
        .S00_AXI_wlast(ps7_M_AXI_GP1_WLAST),
        .S00_AXI_wready(ps7_M_AXI_GP1_WREADY),
        .S00_AXI_wstrb(ps7_M_AXI_GP1_WSTRB),
        .S00_AXI_wvalid(ps7_M_AXI_GP1_WVALID));
  xilinx_zc706_base_axi_intc_0_0 axi_intc_0
       (.intr(axi_intc_0_intr_1_interrupt_concat_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(ps7_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(ps7_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps7_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps7_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(ps7_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps7_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps7_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps7_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps7_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps7_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps7_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps7_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps7_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps7_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps7_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps7_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps7_axi_periph_M00_AXI_WVALID));
  xilinx_zc706_base_axi_intc_0_intr_1_interrupt_concat_0 axi_intc_0_intr_1_interrupt_concat
       (.In0(irq_const_tieoff_dout),
        .In1(matmul_1_interrupt),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(axi_intc_0_intr_1_interrupt_concat_dout));
  xilinx_zc706_base_axi_vip_0_0 axi_vip_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  xilinx_zc706_base_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(ps7_FCLK_CLK0),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_0_clk_out3),
        .clk_out4(clk_wiz_0_clk_out4),
        .clk_out5(clk_wiz_0_clk_out5),
        .clk_out6(clk_wiz_0_clk_out6),
        .locked(clk_wiz_0_locked),
        .resetn(ps7_FCLK_RESET0_N));
  (* DPA_TRACE_SLAVE = "true" *) 
  xilinx_zc706_base_interconnect_axifull_0 interconnect_axifull
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wid(axi_interconnect_0_M00_AXI_WID),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_0_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_0_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_0_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_0_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_0_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_0_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_0_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID),
        .S01_ACLK(clk_wiz_0_clk_out1),
        .S01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S01_AXI_araddr(matmul_1_m_axi_gmem0_ARADDR),
        .S01_AXI_arburst(matmul_1_m_axi_gmem0_ARBURST),
        .S01_AXI_arcache(matmul_1_m_axi_gmem0_ARCACHE),
        .S01_AXI_arlen(matmul_1_m_axi_gmem0_ARLEN),
        .S01_AXI_arlock(matmul_1_m_axi_gmem0_ARLOCK),
        .S01_AXI_arprot(matmul_1_m_axi_gmem0_ARPROT),
        .S01_AXI_arqos(matmul_1_m_axi_gmem0_ARQOS),
        .S01_AXI_arready(matmul_1_m_axi_gmem0_ARREADY),
        .S01_AXI_arregion(matmul_1_m_axi_gmem0_ARREGION),
        .S01_AXI_arsize(matmul_1_m_axi_gmem0_ARSIZE),
        .S01_AXI_arvalid(matmul_1_m_axi_gmem0_ARVALID),
        .S01_AXI_awaddr(matmul_1_m_axi_gmem0_AWADDR),
        .S01_AXI_awburst(matmul_1_m_axi_gmem0_AWBURST),
        .S01_AXI_awcache(matmul_1_m_axi_gmem0_AWCACHE),
        .S01_AXI_awlen(matmul_1_m_axi_gmem0_AWLEN),
        .S01_AXI_awlock(matmul_1_m_axi_gmem0_AWLOCK),
        .S01_AXI_awprot(matmul_1_m_axi_gmem0_AWPROT),
        .S01_AXI_awqos(matmul_1_m_axi_gmem0_AWQOS),
        .S01_AXI_awready(matmul_1_m_axi_gmem0_AWREADY),
        .S01_AXI_awregion(matmul_1_m_axi_gmem0_AWREGION),
        .S01_AXI_awsize(matmul_1_m_axi_gmem0_AWSIZE),
        .S01_AXI_awvalid(matmul_1_m_axi_gmem0_AWVALID),
        .S01_AXI_bready(matmul_1_m_axi_gmem0_BREADY),
        .S01_AXI_bresp(matmul_1_m_axi_gmem0_BRESP),
        .S01_AXI_bvalid(matmul_1_m_axi_gmem0_BVALID),
        .S01_AXI_rdata(matmul_1_m_axi_gmem0_RDATA),
        .S01_AXI_rlast(matmul_1_m_axi_gmem0_RLAST),
        .S01_AXI_rready(matmul_1_m_axi_gmem0_RREADY),
        .S01_AXI_rresp(matmul_1_m_axi_gmem0_RRESP),
        .S01_AXI_rvalid(matmul_1_m_axi_gmem0_RVALID),
        .S01_AXI_wdata(matmul_1_m_axi_gmem0_WDATA),
        .S01_AXI_wlast(matmul_1_m_axi_gmem0_WLAST),
        .S01_AXI_wready(matmul_1_m_axi_gmem0_WREADY),
        .S01_AXI_wstrb(matmul_1_m_axi_gmem0_WSTRB),
        .S01_AXI_wvalid(matmul_1_m_axi_gmem0_WVALID),
        .S02_ACLK(clk_wiz_0_clk_out1),
        .S02_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S02_AXI_araddr(matmul_1_m_axi_gmem1_ARADDR),
        .S02_AXI_arburst(matmul_1_m_axi_gmem1_ARBURST),
        .S02_AXI_arcache(matmul_1_m_axi_gmem1_ARCACHE),
        .S02_AXI_arlen(matmul_1_m_axi_gmem1_ARLEN),
        .S02_AXI_arlock(matmul_1_m_axi_gmem1_ARLOCK),
        .S02_AXI_arprot(matmul_1_m_axi_gmem1_ARPROT),
        .S02_AXI_arqos(matmul_1_m_axi_gmem1_ARQOS),
        .S02_AXI_arready(matmul_1_m_axi_gmem1_ARREADY),
        .S02_AXI_arregion(matmul_1_m_axi_gmem1_ARREGION),
        .S02_AXI_arsize(matmul_1_m_axi_gmem1_ARSIZE),
        .S02_AXI_arvalid(matmul_1_m_axi_gmem1_ARVALID),
        .S02_AXI_awaddr(matmul_1_m_axi_gmem1_AWADDR),
        .S02_AXI_awburst(matmul_1_m_axi_gmem1_AWBURST),
        .S02_AXI_awcache(matmul_1_m_axi_gmem1_AWCACHE),
        .S02_AXI_awlen(matmul_1_m_axi_gmem1_AWLEN),
        .S02_AXI_awlock(matmul_1_m_axi_gmem1_AWLOCK),
        .S02_AXI_awprot(matmul_1_m_axi_gmem1_AWPROT),
        .S02_AXI_awqos(matmul_1_m_axi_gmem1_AWQOS),
        .S02_AXI_awready(matmul_1_m_axi_gmem1_AWREADY),
        .S02_AXI_awregion(matmul_1_m_axi_gmem1_AWREGION),
        .S02_AXI_awsize(matmul_1_m_axi_gmem1_AWSIZE),
        .S02_AXI_awvalid(matmul_1_m_axi_gmem1_AWVALID),
        .S02_AXI_bready(matmul_1_m_axi_gmem1_BREADY),
        .S02_AXI_bresp(matmul_1_m_axi_gmem1_BRESP),
        .S02_AXI_bvalid(matmul_1_m_axi_gmem1_BVALID),
        .S02_AXI_rdata(matmul_1_m_axi_gmem1_RDATA),
        .S02_AXI_rlast(matmul_1_m_axi_gmem1_RLAST),
        .S02_AXI_rready(matmul_1_m_axi_gmem1_RREADY),
        .S02_AXI_rresp(matmul_1_m_axi_gmem1_RRESP),
        .S02_AXI_rvalid(matmul_1_m_axi_gmem1_RVALID),
        .S02_AXI_wdata(matmul_1_m_axi_gmem1_WDATA),
        .S02_AXI_wlast(matmul_1_m_axi_gmem1_WLAST),
        .S02_AXI_wready(matmul_1_m_axi_gmem1_WREADY),
        .S02_AXI_wstrb(matmul_1_m_axi_gmem1_WSTRB),
        .S02_AXI_wvalid(matmul_1_m_axi_gmem1_WVALID));
  xilinx_zc706_base_irq_const_tieoff_0 irq_const_tieoff
       (.dout(irq_const_tieoff_dout));
  xilinx_zc706_base_matmul_1_0 matmul_1
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(matmul_1_interrupt),
        .m_axi_gmem0_ARADDR(matmul_1_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(matmul_1_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(matmul_1_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARLEN(matmul_1_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(matmul_1_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(matmul_1_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(matmul_1_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(matmul_1_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(matmul_1_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(matmul_1_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(matmul_1_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWADDR(matmul_1_m_axi_gmem0_AWADDR),
        .m_axi_gmem0_AWBURST(matmul_1_m_axi_gmem0_AWBURST),
        .m_axi_gmem0_AWCACHE(matmul_1_m_axi_gmem0_AWCACHE),
        .m_axi_gmem0_AWLEN(matmul_1_m_axi_gmem0_AWLEN),
        .m_axi_gmem0_AWLOCK(matmul_1_m_axi_gmem0_AWLOCK),
        .m_axi_gmem0_AWPROT(matmul_1_m_axi_gmem0_AWPROT),
        .m_axi_gmem0_AWQOS(matmul_1_m_axi_gmem0_AWQOS),
        .m_axi_gmem0_AWREADY(matmul_1_m_axi_gmem0_AWREADY),
        .m_axi_gmem0_AWREGION(matmul_1_m_axi_gmem0_AWREGION),
        .m_axi_gmem0_AWSIZE(matmul_1_m_axi_gmem0_AWSIZE),
        .m_axi_gmem0_AWVALID(matmul_1_m_axi_gmem0_AWVALID),
        .m_axi_gmem0_BREADY(matmul_1_m_axi_gmem0_BREADY),
        .m_axi_gmem0_BRESP(matmul_1_m_axi_gmem0_BRESP),
        .m_axi_gmem0_BVALID(matmul_1_m_axi_gmem0_BVALID),
        .m_axi_gmem0_RDATA(matmul_1_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RLAST(matmul_1_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(matmul_1_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(matmul_1_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(matmul_1_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WDATA(matmul_1_m_axi_gmem0_WDATA),
        .m_axi_gmem0_WLAST(matmul_1_m_axi_gmem0_WLAST),
        .m_axi_gmem0_WREADY(matmul_1_m_axi_gmem0_WREADY),
        .m_axi_gmem0_WSTRB(matmul_1_m_axi_gmem0_WSTRB),
        .m_axi_gmem0_WVALID(matmul_1_m_axi_gmem0_WVALID),
        .m_axi_gmem1_ARADDR(matmul_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(matmul_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(matmul_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARLEN(matmul_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(matmul_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(matmul_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(matmul_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(matmul_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(matmul_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(matmul_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(matmul_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWADDR(matmul_1_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(matmul_1_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(matmul_1_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWLEN(matmul_1_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(matmul_1_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(matmul_1_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(matmul_1_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(matmul_1_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWREGION(matmul_1_m_axi_gmem1_AWREGION),
        .m_axi_gmem1_AWSIZE(matmul_1_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(matmul_1_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BREADY(matmul_1_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(matmul_1_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(matmul_1_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA(matmul_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RLAST(matmul_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(matmul_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(matmul_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(matmul_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WDATA(matmul_1_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WLAST(matmul_1_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(matmul_1_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(matmul_1_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(matmul_1_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR(axi_ic_ps7_M_AXI_GP1_M00_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(axi_ic_ps7_M_AXI_GP1_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_ic_ps7_M_AXI_GP1_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_ic_ps7_M_AXI_GP1_M00_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(axi_ic_ps7_M_AXI_GP1_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_ic_ps7_M_AXI_GP1_M00_AXI_AWVALID),
        .s_axi_control_BREADY(axi_ic_ps7_M_AXI_GP1_M00_AXI_BREADY),
        .s_axi_control_BRESP(axi_ic_ps7_M_AXI_GP1_M00_AXI_BRESP),
        .s_axi_control_BVALID(axi_ic_ps7_M_AXI_GP1_M00_AXI_BVALID),
        .s_axi_control_RDATA(axi_ic_ps7_M_AXI_GP1_M00_AXI_RDATA),
        .s_axi_control_RREADY(axi_ic_ps7_M_AXI_GP1_M00_AXI_RREADY),
        .s_axi_control_RRESP(axi_ic_ps7_M_AXI_GP1_M00_AXI_RRESP),
        .s_axi_control_RVALID(axi_ic_ps7_M_AXI_GP1_M00_AXI_RVALID),
        .s_axi_control_WDATA(axi_ic_ps7_M_AXI_GP1_M00_AXI_WDATA),
        .s_axi_control_WREADY(axi_ic_ps7_M_AXI_GP1_M00_AXI_WREADY),
        .s_axi_control_WSTRB(axi_ic_ps7_M_AXI_GP1_M00_AXI_WSTRB),
        .s_axi_control_WVALID(axi_ic_ps7_M_AXI_GP1_M00_AXI_WVALID));
  xilinx_zc706_base_proc_sys_reset_100MHz_0 proc_sys_reset_100MHz
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  xilinx_zc706_base_proc_sys_reset_142MHz_0 proc_sys_reset_142MHz
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  xilinx_zc706_base_proc_sys_reset_166MHz_0 proc_sys_reset_166MHz
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out3));
  xilinx_zc706_base_proc_sys_reset_200MHz_0 proc_sys_reset_200MHz
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out4));
  xilinx_zc706_base_proc_sys_reset_41MHz_0 proc_sys_reset_41MHz
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out6));
  xilinx_zc706_base_proc_sys_reset_50MHz_0 proc_sys_reset_50MHz
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out5));
  xilinx_zc706_base_ps7_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(ps7_FCLK_CLK0),
        .FCLK_RESET0_N(ps7_FCLK_RESET0_N),
        .IRQ_F2P(axi_intc_0_irq),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(clk_wiz_0_clk_out1),
        .M_AXI_GP0_ARADDR(ps7_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps7_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps7_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps7_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps7_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps7_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps7_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps7_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps7_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps7_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps7_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps7_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps7_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps7_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps7_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps7_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps7_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps7_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps7_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps7_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps7_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps7_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps7_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps7_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps7_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps7_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps7_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps7_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps7_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps7_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps7_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps7_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps7_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps7_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps7_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps7_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps7_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps7_M_AXI_GP0_WVALID),
        .M_AXI_GP1_ACLK(clk_wiz_0_clk_out1),
        .M_AXI_GP1_ARADDR(ps7_M_AXI_GP1_ARADDR),
        .M_AXI_GP1_ARBURST(ps7_M_AXI_GP1_ARBURST),
        .M_AXI_GP1_ARCACHE(ps7_M_AXI_GP1_ARCACHE),
        .M_AXI_GP1_ARID(ps7_M_AXI_GP1_ARID),
        .M_AXI_GP1_ARLEN(ps7_M_AXI_GP1_ARLEN),
        .M_AXI_GP1_ARLOCK(ps7_M_AXI_GP1_ARLOCK),
        .M_AXI_GP1_ARPROT(ps7_M_AXI_GP1_ARPROT),
        .M_AXI_GP1_ARQOS(ps7_M_AXI_GP1_ARQOS),
        .M_AXI_GP1_ARREADY(ps7_M_AXI_GP1_ARREADY),
        .M_AXI_GP1_ARSIZE(ps7_M_AXI_GP1_ARSIZE),
        .M_AXI_GP1_ARVALID(ps7_M_AXI_GP1_ARVALID),
        .M_AXI_GP1_AWADDR(ps7_M_AXI_GP1_AWADDR),
        .M_AXI_GP1_AWBURST(ps7_M_AXI_GP1_AWBURST),
        .M_AXI_GP1_AWCACHE(ps7_M_AXI_GP1_AWCACHE),
        .M_AXI_GP1_AWID(ps7_M_AXI_GP1_AWID),
        .M_AXI_GP1_AWLEN(ps7_M_AXI_GP1_AWLEN),
        .M_AXI_GP1_AWLOCK(ps7_M_AXI_GP1_AWLOCK),
        .M_AXI_GP1_AWPROT(ps7_M_AXI_GP1_AWPROT),
        .M_AXI_GP1_AWQOS(ps7_M_AXI_GP1_AWQOS),
        .M_AXI_GP1_AWREADY(ps7_M_AXI_GP1_AWREADY),
        .M_AXI_GP1_AWSIZE(ps7_M_AXI_GP1_AWSIZE),
        .M_AXI_GP1_AWVALID(ps7_M_AXI_GP1_AWVALID),
        .M_AXI_GP1_BID(ps7_M_AXI_GP1_BID),
        .M_AXI_GP1_BREADY(ps7_M_AXI_GP1_BREADY),
        .M_AXI_GP1_BRESP(ps7_M_AXI_GP1_BRESP),
        .M_AXI_GP1_BVALID(ps7_M_AXI_GP1_BVALID),
        .M_AXI_GP1_RDATA(ps7_M_AXI_GP1_RDATA),
        .M_AXI_GP1_RID(ps7_M_AXI_GP1_RID),
        .M_AXI_GP1_RLAST(ps7_M_AXI_GP1_RLAST),
        .M_AXI_GP1_RREADY(ps7_M_AXI_GP1_RREADY),
        .M_AXI_GP1_RRESP(ps7_M_AXI_GP1_RRESP),
        .M_AXI_GP1_RVALID(ps7_M_AXI_GP1_RVALID),
        .M_AXI_GP1_WDATA(ps7_M_AXI_GP1_WDATA),
        .M_AXI_GP1_WID(ps7_M_AXI_GP1_WID),
        .M_AXI_GP1_WLAST(ps7_M_AXI_GP1_WLAST),
        .M_AXI_GP1_WREADY(ps7_M_AXI_GP1_WREADY),
        .M_AXI_GP1_WSTRB(ps7_M_AXI_GP1_WSTRB),
        .M_AXI_GP1_WVALID(ps7_M_AXI_GP1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(clk_wiz_0_clk_out1),
        .S_AXI_HP0_ARADDR(axi_interconnect_0_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_interconnect_0_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_interconnect_0_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN(axi_interconnect_0_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_interconnect_0_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_interconnect_0_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_interconnect_0_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_interconnect_0_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_interconnect_0_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_interconnect_0_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_interconnect_0_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_interconnect_0_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_interconnect_0_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN(axi_interconnect_0_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_interconnect_0_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_interconnect_0_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_interconnect_0_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_interconnect_0_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_interconnect_0_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_interconnect_0_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(axi_interconnect_0_M00_AXI_BID),
        .S_AXI_HP0_BREADY(axi_interconnect_0_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_interconnect_0_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_interconnect_0_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_interconnect_0_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_interconnect_0_M00_AXI_RID),
        .S_AXI_HP0_RLAST(axi_interconnect_0_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_interconnect_0_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_interconnect_0_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_interconnect_0_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_interconnect_0_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(axi_interconnect_0_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_interconnect_0_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_interconnect_0_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_interconnect_0_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  (* DPA_AXILITE_MASTER = "fallback" *) 
  xilinx_zc706_base_ps7_axi_periph_0 ps7_axi_periph
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(ps7_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps7_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps7_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(ps7_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps7_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps7_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps7_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps7_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps7_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps7_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps7_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps7_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps7_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps7_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps7_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps7_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps7_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps7_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps7_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps7_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps7_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps7_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps7_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps7_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps7_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps7_M_AXI_GP0_BID),
        .S00_AXI_bready(ps7_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps7_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps7_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps7_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps7_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps7_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps7_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps7_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps7_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps7_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps7_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps7_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps7_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps7_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps7_M_AXI_GP0_WVALID));
endmodule

module xilinx_zc706_base_axi_ic_ps7_M_AXI_GP1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_ic_ps7_M_AXI_GP1_ACLK_net;
  wire axi_ic_ps7_M_AXI_GP1_ARESETN_net;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARADDR;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARBURST;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARCACHE;
  wire [11:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARID;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARLEN;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARPROT;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARQOS;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARREADY;
  wire [2:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARSIZE;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARVALID;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWADDR;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWBURST;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWCACHE;
  wire [11:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWID;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWLEN;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWPROT;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWQOS;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWREADY;
  wire [2:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWSIZE;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWVALID;
  wire [11:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BID;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BRESP;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RDATA;
  wire [11:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RID;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RLAST;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RRESP;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WDATA;
  wire [11:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WID;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WLAST;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WSTRB;
  wire axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARADDR;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARREADY;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARVALID;
  wire [31:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWADDR;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWREADY;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWVALID;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BREADY;
  wire [1:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BRESP;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BVALID;
  wire [31:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RDATA;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RREADY;
  wire [1:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RRESP;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RVALID;
  wire [31:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WDATA;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WREADY;
  wire [3:0]s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WSTRB;
  wire s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WREADY;
  assign axi_ic_ps7_M_AXI_GP1_ACLK_net = M00_ACLK;
  assign axi_ic_ps7_M_AXI_GP1_ARESETN_net = M00_ARESETN;
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WREADY = M00_AXI_wready;
  s00_couplers_imp_CJUHIY s00_couplers
       (.M_ACLK(axi_ic_ps7_M_AXI_GP1_ACLK_net),
        .M_ARESETN(axi_ic_ps7_M_AXI_GP1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARADDR),
        .M_AXI_arready(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_ic_ps7_M_AXI_GP1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BID),
        .S_AXI_bready(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WID),
        .S_AXI_wlast(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_ps7_M_AXI_GP1_to_s00_couplers_WVALID));
endmodule

module xilinx_zc706_base_interconnect_axifull_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [1:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [3:0]S02_AXI_awregion;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire interconnect_axifull_ACLK_net;
  wire interconnect_axifull_ARESETN_net;
  wire [31:0]interconnect_axifull_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axifull_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_axifull_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARQOS;
  wire interconnect_axifull_to_s00_couplers_ARREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARREGION;
  wire [2:0]interconnect_axifull_to_s00_couplers_ARSIZE;
  wire interconnect_axifull_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axifull_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_axifull_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWQOS;
  wire interconnect_axifull_to_s00_couplers_AWREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWREGION;
  wire [2:0]interconnect_axifull_to_s00_couplers_AWSIZE;
  wire interconnect_axifull_to_s00_couplers_AWVALID;
  wire interconnect_axifull_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axifull_to_s00_couplers_BRESP;
  wire interconnect_axifull_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_RDATA;
  wire interconnect_axifull_to_s00_couplers_RLAST;
  wire interconnect_axifull_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axifull_to_s00_couplers_RRESP;
  wire interconnect_axifull_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_WDATA;
  wire interconnect_axifull_to_s00_couplers_WLAST;
  wire interconnect_axifull_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_WSTRB;
  wire interconnect_axifull_to_s00_couplers_WVALID;
  wire [31:0]interconnect_axifull_to_s01_couplers_ARADDR;
  wire [1:0]interconnect_axifull_to_s01_couplers_ARBURST;
  wire [3:0]interconnect_axifull_to_s01_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_to_s01_couplers_ARLEN;
  wire [1:0]interconnect_axifull_to_s01_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_to_s01_couplers_ARPROT;
  wire [3:0]interconnect_axifull_to_s01_couplers_ARQOS;
  wire interconnect_axifull_to_s01_couplers_ARREADY;
  wire [3:0]interconnect_axifull_to_s01_couplers_ARREGION;
  wire [2:0]interconnect_axifull_to_s01_couplers_ARSIZE;
  wire interconnect_axifull_to_s01_couplers_ARVALID;
  wire [31:0]interconnect_axifull_to_s01_couplers_AWADDR;
  wire [1:0]interconnect_axifull_to_s01_couplers_AWBURST;
  wire [3:0]interconnect_axifull_to_s01_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_to_s01_couplers_AWLEN;
  wire [1:0]interconnect_axifull_to_s01_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_to_s01_couplers_AWPROT;
  wire [3:0]interconnect_axifull_to_s01_couplers_AWQOS;
  wire interconnect_axifull_to_s01_couplers_AWREADY;
  wire [3:0]interconnect_axifull_to_s01_couplers_AWREGION;
  wire [2:0]interconnect_axifull_to_s01_couplers_AWSIZE;
  wire interconnect_axifull_to_s01_couplers_AWVALID;
  wire interconnect_axifull_to_s01_couplers_BREADY;
  wire [1:0]interconnect_axifull_to_s01_couplers_BRESP;
  wire interconnect_axifull_to_s01_couplers_BVALID;
  wire [31:0]interconnect_axifull_to_s01_couplers_RDATA;
  wire interconnect_axifull_to_s01_couplers_RLAST;
  wire interconnect_axifull_to_s01_couplers_RREADY;
  wire [1:0]interconnect_axifull_to_s01_couplers_RRESP;
  wire interconnect_axifull_to_s01_couplers_RVALID;
  wire [31:0]interconnect_axifull_to_s01_couplers_WDATA;
  wire interconnect_axifull_to_s01_couplers_WLAST;
  wire interconnect_axifull_to_s01_couplers_WREADY;
  wire [3:0]interconnect_axifull_to_s01_couplers_WSTRB;
  wire interconnect_axifull_to_s01_couplers_WVALID;
  wire [31:0]interconnect_axifull_to_s02_couplers_ARADDR;
  wire [1:0]interconnect_axifull_to_s02_couplers_ARBURST;
  wire [3:0]interconnect_axifull_to_s02_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_to_s02_couplers_ARLEN;
  wire [1:0]interconnect_axifull_to_s02_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_to_s02_couplers_ARPROT;
  wire [3:0]interconnect_axifull_to_s02_couplers_ARQOS;
  wire interconnect_axifull_to_s02_couplers_ARREADY;
  wire [3:0]interconnect_axifull_to_s02_couplers_ARREGION;
  wire [2:0]interconnect_axifull_to_s02_couplers_ARSIZE;
  wire interconnect_axifull_to_s02_couplers_ARVALID;
  wire [31:0]interconnect_axifull_to_s02_couplers_AWADDR;
  wire [1:0]interconnect_axifull_to_s02_couplers_AWBURST;
  wire [3:0]interconnect_axifull_to_s02_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_to_s02_couplers_AWLEN;
  wire [1:0]interconnect_axifull_to_s02_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_to_s02_couplers_AWPROT;
  wire [3:0]interconnect_axifull_to_s02_couplers_AWQOS;
  wire interconnect_axifull_to_s02_couplers_AWREADY;
  wire [3:0]interconnect_axifull_to_s02_couplers_AWREGION;
  wire [2:0]interconnect_axifull_to_s02_couplers_AWSIZE;
  wire interconnect_axifull_to_s02_couplers_AWVALID;
  wire interconnect_axifull_to_s02_couplers_BREADY;
  wire [1:0]interconnect_axifull_to_s02_couplers_BRESP;
  wire interconnect_axifull_to_s02_couplers_BVALID;
  wire [31:0]interconnect_axifull_to_s02_couplers_RDATA;
  wire interconnect_axifull_to_s02_couplers_RLAST;
  wire interconnect_axifull_to_s02_couplers_RREADY;
  wire [1:0]interconnect_axifull_to_s02_couplers_RRESP;
  wire interconnect_axifull_to_s02_couplers_RVALID;
  wire [31:0]interconnect_axifull_to_s02_couplers_WDATA;
  wire interconnect_axifull_to_s02_couplers_WLAST;
  wire interconnect_axifull_to_s02_couplers_WREADY;
  wire [3:0]interconnect_axifull_to_s02_couplers_WSTRB;
  wire interconnect_axifull_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_interconnect_axifull_ARADDR;
  wire [1:0]m00_couplers_to_interconnect_axifull_ARBURST;
  wire [3:0]m00_couplers_to_interconnect_axifull_ARCACHE;
  wire [1:0]m00_couplers_to_interconnect_axifull_ARID;
  wire [3:0]m00_couplers_to_interconnect_axifull_ARLEN;
  wire [1:0]m00_couplers_to_interconnect_axifull_ARLOCK;
  wire [2:0]m00_couplers_to_interconnect_axifull_ARPROT;
  wire [3:0]m00_couplers_to_interconnect_axifull_ARQOS;
  wire m00_couplers_to_interconnect_axifull_ARREADY;
  wire [2:0]m00_couplers_to_interconnect_axifull_ARSIZE;
  wire m00_couplers_to_interconnect_axifull_ARVALID;
  wire [31:0]m00_couplers_to_interconnect_axifull_AWADDR;
  wire [1:0]m00_couplers_to_interconnect_axifull_AWBURST;
  wire [3:0]m00_couplers_to_interconnect_axifull_AWCACHE;
  wire [1:0]m00_couplers_to_interconnect_axifull_AWID;
  wire [3:0]m00_couplers_to_interconnect_axifull_AWLEN;
  wire [1:0]m00_couplers_to_interconnect_axifull_AWLOCK;
  wire [2:0]m00_couplers_to_interconnect_axifull_AWPROT;
  wire [3:0]m00_couplers_to_interconnect_axifull_AWQOS;
  wire m00_couplers_to_interconnect_axifull_AWREADY;
  wire [2:0]m00_couplers_to_interconnect_axifull_AWSIZE;
  wire m00_couplers_to_interconnect_axifull_AWVALID;
  wire [5:0]m00_couplers_to_interconnect_axifull_BID;
  wire m00_couplers_to_interconnect_axifull_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axifull_BRESP;
  wire m00_couplers_to_interconnect_axifull_BVALID;
  wire [63:0]m00_couplers_to_interconnect_axifull_RDATA;
  wire [5:0]m00_couplers_to_interconnect_axifull_RID;
  wire m00_couplers_to_interconnect_axifull_RLAST;
  wire m00_couplers_to_interconnect_axifull_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axifull_RRESP;
  wire m00_couplers_to_interconnect_axifull_RVALID;
  wire [63:0]m00_couplers_to_interconnect_axifull_WDATA;
  wire [1:0]m00_couplers_to_interconnect_axifull_WID;
  wire m00_couplers_to_interconnect_axifull_WLAST;
  wire m00_couplers_to_interconnect_axifull_WREADY;
  wire [7:0]m00_couplers_to_interconnect_axifull_WSTRB;
  wire m00_couplers_to_interconnect_axifull_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [191:128]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_interconnect_axifull_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_interconnect_axifull_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_interconnect_axifull_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_interconnect_axifull_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_interconnect_axifull_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_interconnect_axifull_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_interconnect_axifull_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_interconnect_axifull_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_interconnect_axifull_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axifull_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_interconnect_axifull_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_interconnect_axifull_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_interconnect_axifull_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_interconnect_axifull_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_interconnect_axifull_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_interconnect_axifull_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_interconnect_axifull_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_interconnect_axifull_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_interconnect_axifull_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axifull_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axifull_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axifull_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_interconnect_axifull_WDATA;
  assign M00_AXI_wid[1:0] = m00_couplers_to_interconnect_axifull_WID;
  assign M00_AXI_wlast = m00_couplers_to_interconnect_axifull_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_interconnect_axifull_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axifull_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axifull_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axifull_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axifull_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axifull_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axifull_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = interconnect_axifull_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axifull_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axifull_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axifull_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = interconnect_axifull_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = interconnect_axifull_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = interconnect_axifull_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = interconnect_axifull_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = interconnect_axifull_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = interconnect_axifull_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = interconnect_axifull_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = interconnect_axifull_to_s01_couplers_RVALID;
  assign S01_AXI_wready = interconnect_axifull_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = interconnect_axifull_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = interconnect_axifull_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = interconnect_axifull_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = interconnect_axifull_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = interconnect_axifull_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = interconnect_axifull_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = interconnect_axifull_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = interconnect_axifull_to_s02_couplers_RVALID;
  assign S02_AXI_wready = interconnect_axifull_to_s02_couplers_WREADY;
  assign interconnect_axifull_ACLK_net = ACLK;
  assign interconnect_axifull_ARESETN_net = ARESETN;
  assign interconnect_axifull_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axifull_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axifull_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axifull_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axifull_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axifull_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axifull_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axifull_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign interconnect_axifull_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axifull_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axifull_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axifull_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axifull_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axifull_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axifull_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axifull_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axifull_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axifull_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign interconnect_axifull_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axifull_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axifull_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axifull_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axifull_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axifull_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axifull_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axifull_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign interconnect_axifull_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign interconnect_axifull_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign interconnect_axifull_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign interconnect_axifull_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign interconnect_axifull_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign interconnect_axifull_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign interconnect_axifull_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign interconnect_axifull_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign interconnect_axifull_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign interconnect_axifull_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign interconnect_axifull_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign interconnect_axifull_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign interconnect_axifull_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign interconnect_axifull_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign interconnect_axifull_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign interconnect_axifull_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign interconnect_axifull_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign interconnect_axifull_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign interconnect_axifull_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign interconnect_axifull_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign interconnect_axifull_to_s01_couplers_BREADY = S01_AXI_bready;
  assign interconnect_axifull_to_s01_couplers_RREADY = S01_AXI_rready;
  assign interconnect_axifull_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign interconnect_axifull_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign interconnect_axifull_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign interconnect_axifull_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign interconnect_axifull_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign interconnect_axifull_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign interconnect_axifull_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign interconnect_axifull_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign interconnect_axifull_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign interconnect_axifull_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign interconnect_axifull_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign interconnect_axifull_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign interconnect_axifull_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign interconnect_axifull_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign interconnect_axifull_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign interconnect_axifull_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign interconnect_axifull_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign interconnect_axifull_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign interconnect_axifull_to_s02_couplers_AWLOCK = S02_AXI_awlock[1:0];
  assign interconnect_axifull_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign interconnect_axifull_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign interconnect_axifull_to_s02_couplers_AWREGION = S02_AXI_awregion[3:0];
  assign interconnect_axifull_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign interconnect_axifull_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign interconnect_axifull_to_s02_couplers_BREADY = S02_AXI_bready;
  assign interconnect_axifull_to_s02_couplers_RREADY = S02_AXI_rready;
  assign interconnect_axifull_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign interconnect_axifull_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign interconnect_axifull_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign interconnect_axifull_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_interconnect_axifull_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axifull_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axifull_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_interconnect_axifull_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axifull_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axifull_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_interconnect_axifull_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_interconnect_axifull_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_interconnect_axifull_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axifull_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axifull_WREADY = M00_AXI_wready;
  m00_couplers_imp_GGBKXZ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axifull_ARADDR),
        .M_AXI_arburst(m00_couplers_to_interconnect_axifull_ARBURST),
        .M_AXI_arcache(m00_couplers_to_interconnect_axifull_ARCACHE),
        .M_AXI_arid(m00_couplers_to_interconnect_axifull_ARID),
        .M_AXI_arlen(m00_couplers_to_interconnect_axifull_ARLEN),
        .M_AXI_arlock(m00_couplers_to_interconnect_axifull_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_interconnect_axifull_ARPROT),
        .M_AXI_arqos(m00_couplers_to_interconnect_axifull_ARQOS),
        .M_AXI_arready(m00_couplers_to_interconnect_axifull_ARREADY),
        .M_AXI_arsize(m00_couplers_to_interconnect_axifull_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axifull_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axifull_AWADDR),
        .M_AXI_awburst(m00_couplers_to_interconnect_axifull_AWBURST),
        .M_AXI_awcache(m00_couplers_to_interconnect_axifull_AWCACHE),
        .M_AXI_awid(m00_couplers_to_interconnect_axifull_AWID),
        .M_AXI_awlen(m00_couplers_to_interconnect_axifull_AWLEN),
        .M_AXI_awlock(m00_couplers_to_interconnect_axifull_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_interconnect_axifull_AWPROT),
        .M_AXI_awqos(m00_couplers_to_interconnect_axifull_AWQOS),
        .M_AXI_awready(m00_couplers_to_interconnect_axifull_AWREADY),
        .M_AXI_awsize(m00_couplers_to_interconnect_axifull_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axifull_AWVALID),
        .M_AXI_bid(m00_couplers_to_interconnect_axifull_BID),
        .M_AXI_bready(m00_couplers_to_interconnect_axifull_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axifull_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axifull_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axifull_RDATA),
        .M_AXI_rid(m00_couplers_to_interconnect_axifull_RID),
        .M_AXI_rlast(m00_couplers_to_interconnect_axifull_RLAST),
        .M_AXI_rready(m00_couplers_to_interconnect_axifull_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axifull_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axifull_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axifull_WDATA),
        .M_AXI_wid(m00_couplers_to_interconnect_axifull_WID),
        .M_AXI_wlast(m00_couplers_to_interconnect_axifull_WLAST),
        .M_AXI_wready(m00_couplers_to_interconnect_axifull_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axifull_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axifull_WVALID),
        .S_ACLK(interconnect_axifull_ACLK_net),
        .S_ARESETN(interconnect_axifull_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_104RENT s00_couplers
       (.M_ACLK(interconnect_axifull_ACLK_net),
        .M_ARESETN(interconnect_axifull_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_to_s00_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_to_s00_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_to_s00_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_to_s00_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_to_s00_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_to_s00_couplers_WVALID));
  s01_couplers_imp_1TOEHTK s01_couplers
       (.M_ACLK(interconnect_axifull_ACLK_net),
        .M_ARESETN(interconnect_axifull_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_to_s01_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_to_s01_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_to_s01_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_to_s01_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_to_s01_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_to_s01_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_to_s01_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_to_s01_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_to_s01_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_to_s01_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_to_s01_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_to_s01_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_to_s01_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_to_s01_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_to_s01_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_to_s01_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_to_s01_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_to_s01_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_to_s01_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_to_s01_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_to_s01_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_to_s01_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_to_s01_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_to_s01_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_to_s01_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_to_s01_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_to_s01_couplers_WVALID));
  s02_couplers_imp_QE7YIJ s02_couplers
       (.M_ACLK(interconnect_axifull_ACLK_net),
        .M_ARESETN(interconnect_axifull_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_to_s02_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_to_s02_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_to_s02_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_to_s02_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_to_s02_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_to_s02_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_to_s02_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_to_s02_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_to_s02_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_to_s02_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_to_s02_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_to_s02_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_to_s02_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_to_s02_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_to_s02_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_to_s02_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_to_s02_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_to_s02_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_to_s02_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_to_s02_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_to_s02_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_to_s02_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_to_s02_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_to_s02_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_to_s02_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_to_s02_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_to_s02_couplers_WVALID));
  xilinx_zc706_base_xbar_0 xbar
       (.aclk(interconnect_axifull_ACLK_net),
        .aresetn(interconnect_axifull_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module xilinx_zc706_base_ps7_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps7_axi_periph_ACLK_net;
  wire ps7_axi_periph_ARESETN_net;
  wire [31:0]ps7_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps7_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps7_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps7_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps7_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps7_axi_periph_to_s00_couplers_ARQOS;
  wire ps7_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps7_axi_periph_to_s00_couplers_ARSIZE;
  wire ps7_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps7_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps7_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps7_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps7_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps7_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps7_axi_periph_to_s00_couplers_AWQOS;
  wire ps7_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps7_axi_periph_to_s00_couplers_AWSIZE;
  wire ps7_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps7_axi_periph_to_s00_couplers_BID;
  wire ps7_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps7_axi_periph_to_s00_couplers_BRESP;
  wire ps7_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps7_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps7_axi_periph_to_s00_couplers_RID;
  wire ps7_axi_periph_to_s00_couplers_RLAST;
  wire ps7_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps7_axi_periph_to_s00_couplers_RRESP;
  wire ps7_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps7_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps7_axi_periph_to_s00_couplers_WID;
  wire ps7_axi_periph_to_s00_couplers_WLAST;
  wire ps7_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps7_axi_periph_to_s00_couplers_WSTRB;
  wire ps7_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_ps7_axi_periph_ARADDR;
  wire s00_couplers_to_ps7_axi_periph_ARREADY;
  wire s00_couplers_to_ps7_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_ps7_axi_periph_AWADDR;
  wire s00_couplers_to_ps7_axi_periph_AWREADY;
  wire s00_couplers_to_ps7_axi_periph_AWVALID;
  wire s00_couplers_to_ps7_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps7_axi_periph_BRESP;
  wire s00_couplers_to_ps7_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps7_axi_periph_RDATA;
  wire s00_couplers_to_ps7_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps7_axi_periph_RRESP;
  wire s00_couplers_to_ps7_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps7_axi_periph_WDATA;
  wire s00_couplers_to_ps7_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps7_axi_periph_WSTRB;
  wire s00_couplers_to_ps7_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_ps7_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps7_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_ps7_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps7_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps7_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps7_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps7_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps7_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps7_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps7_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_axi_periph_to_s00_couplers_WREADY;
  assign ps7_axi_periph_ACLK_net = M00_ACLK;
  assign ps7_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps7_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps7_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps7_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps7_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps7_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps7_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps7_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps7_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps7_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_2WZ361 s00_couplers
       (.M_ACLK(ps7_axi_periph_ACLK_net),
        .M_ARESETN(ps7_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps7_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps7_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps7_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps7_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps7_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps7_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps7_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps7_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps7_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps7_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_ps7_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps7_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps7_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps7_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps7_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps7_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps7_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps7_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_axi_periph_to_s00_couplers_WVALID));
endmodule
