// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Oct  8 12:07:29 2026
// Host        : fid2310 running 64-bit Ubuntu 26.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fid/swing-hog/swing/bd/design_1/ip/design_1_axil_top_0_0/design_1_axil_top_0_0_sim_netlist.v
// Design      : design_1_axil_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axil_top_0_0,axil_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axil_top,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_axil_top_0_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [7:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_awready = s00_axi_wready;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axil_top_0_0_axil_top inst
       (.S_AXI_RVALID_reg(s00_axi_rvalid),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axil_interface" *) 
module design_1_axil_top_0_0_axil_interface
   (s00_axi_rdata,
    S_AXI_AWREADY,
    S_AXI_RVALID_reg_0,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_rready);
  output [31:0]s00_axi_rdata;
  output S_AXI_AWREADY;
  output S_AXI_RVALID_reg_0;
  output s00_axi_bvalid;
  output s00_axi_arready;
  input s00_axi_aclk;
  input [7:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input [7:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_rready;

  wire S_AXI_AWREADY;
  wire S_AXI_BVALID_i_1_n_0;
  wire S_AXI_RVALID_i_1_n_0;
  wire S_AXI_RVALID_reg_0;
  wire p_0_in;
  wire ram_r_en;
  wire ram_r_en_i_1_n_0;
  wire [7:0]ram_w_addr;
  wire ram_w_addr0;
  wire [0:0]ram_w_data;
  wire \ram_w_data_reg_n_0_[0] ;
  wire \ram_w_data_reg_n_0_[10] ;
  wire \ram_w_data_reg_n_0_[11] ;
  wire \ram_w_data_reg_n_0_[12] ;
  wire \ram_w_data_reg_n_0_[13] ;
  wire \ram_w_data_reg_n_0_[14] ;
  wire \ram_w_data_reg_n_0_[15] ;
  wire \ram_w_data_reg_n_0_[16] ;
  wire \ram_w_data_reg_n_0_[17] ;
  wire \ram_w_data_reg_n_0_[18] ;
  wire \ram_w_data_reg_n_0_[19] ;
  wire \ram_w_data_reg_n_0_[1] ;
  wire \ram_w_data_reg_n_0_[20] ;
  wire \ram_w_data_reg_n_0_[21] ;
  wire \ram_w_data_reg_n_0_[22] ;
  wire \ram_w_data_reg_n_0_[23] ;
  wire \ram_w_data_reg_n_0_[24] ;
  wire \ram_w_data_reg_n_0_[25] ;
  wire \ram_w_data_reg_n_0_[26] ;
  wire \ram_w_data_reg_n_0_[27] ;
  wire \ram_w_data_reg_n_0_[28] ;
  wire \ram_w_data_reg_n_0_[29] ;
  wire \ram_w_data_reg_n_0_[2] ;
  wire \ram_w_data_reg_n_0_[30] ;
  wire \ram_w_data_reg_n_0_[31] ;
  wire \ram_w_data_reg_n_0_[3] ;
  wire \ram_w_data_reg_n_0_[4] ;
  wire \ram_w_data_reg_n_0_[5] ;
  wire \ram_w_data_reg_n_0_[6] ;
  wire \ram_w_data_reg_n_0_[7] ;
  wire \ram_w_data_reg_n_0_[8] ;
  wire \ram_w_data_reg_n_0_[9] ;
  wire ram_w_en;
  wire ram_w_en0;
  wire ram_w_en_i_1_n_0;
  wire [3:0]ram_wstrb;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire w_ready0__0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    S_AXI_BVALID_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_bready),
        .I2(s00_axi_bvalid),
        .O(S_AXI_BVALID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_BVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hF4)) 
    S_AXI_RVALID_i_1
       (.I0(s00_axi_rready),
        .I1(S_AXI_RVALID_reg_0),
        .I2(ram_r_en),
        .O(S_AXI_RVALID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_RVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(S_AXI_RVALID_reg_0),
        .R(p_0_in));
  design_1_axil_top_0_0_ram ram_0
       (.Q(ram_w_addr),
        .ram_block_reg_0({\ram_w_data_reg_n_0_[31] ,\ram_w_data_reg_n_0_[30] ,\ram_w_data_reg_n_0_[29] ,\ram_w_data_reg_n_0_[28] ,\ram_w_data_reg_n_0_[27] ,\ram_w_data_reg_n_0_[26] ,\ram_w_data_reg_n_0_[25] ,\ram_w_data_reg_n_0_[24] ,\ram_w_data_reg_n_0_[23] ,\ram_w_data_reg_n_0_[22] ,\ram_w_data_reg_n_0_[21] ,\ram_w_data_reg_n_0_[20] ,\ram_w_data_reg_n_0_[19] ,\ram_w_data_reg_n_0_[18] ,\ram_w_data_reg_n_0_[17] ,\ram_w_data_reg_n_0_[16] ,\ram_w_data_reg_n_0_[15] ,\ram_w_data_reg_n_0_[14] ,\ram_w_data_reg_n_0_[13] ,\ram_w_data_reg_n_0_[12] ,\ram_w_data_reg_n_0_[11] ,\ram_w_data_reg_n_0_[10] ,\ram_w_data_reg_n_0_[9] ,\ram_w_data_reg_n_0_[8] ,\ram_w_data_reg_n_0_[7] ,\ram_w_data_reg_n_0_[6] ,\ram_w_data_reg_n_0_[5] ,\ram_w_data_reg_n_0_[4] ,\ram_w_data_reg_n_0_[3] ,\ram_w_data_reg_n_0_[2] ,\ram_w_data_reg_n_0_[1] ,\ram_w_data_reg_n_0_[0] }),
        .ram_block_reg_1(ram_wstrb),
        .ram_r_en(ram_r_en),
        .ram_w_en(ram_w_en),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_rdata(s00_axi_rdata));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ram_r_en_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_RVALID_reg_0),
        .I2(ram_r_en),
        .O(ram_r_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ram_r_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ram_r_en_i_1_n_0),
        .Q(ram_r_en),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \ram_w_addr[7]_i_1 
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .O(ram_w_addr0));
  FDRE \ram_w_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[0]),
        .Q(ram_w_addr[0]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[1]),
        .Q(ram_w_addr[1]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[2]),
        .Q(ram_w_addr[2]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[3]),
        .Q(ram_w_addr[3]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[4]),
        .Q(ram_w_addr[4]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[5]),
        .Q(ram_w_addr[5]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[6]),
        .Q(ram_w_addr[6]),
        .R(1'b0));
  FDRE \ram_w_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ram_w_addr0),
        .D(s00_axi_awaddr[7]),
        .Q(ram_w_addr[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \ram_w_data[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(ram_w_data));
  FDRE \ram_w_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[0]),
        .Q(\ram_w_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[10]),
        .Q(\ram_w_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[11]),
        .Q(\ram_w_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[12]),
        .Q(\ram_w_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[13]),
        .Q(\ram_w_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[14]),
        .Q(\ram_w_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[15]),
        .Q(\ram_w_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[16]),
        .Q(\ram_w_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[17]),
        .Q(\ram_w_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[18]),
        .Q(\ram_w_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[19]),
        .Q(\ram_w_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[1]),
        .Q(\ram_w_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[20]),
        .Q(\ram_w_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[21]),
        .Q(\ram_w_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[22]),
        .Q(\ram_w_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[23]),
        .Q(\ram_w_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[24]),
        .Q(\ram_w_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[25]),
        .Q(\ram_w_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[26]),
        .Q(\ram_w_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[27]),
        .Q(\ram_w_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[28]),
        .Q(\ram_w_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[29]),
        .Q(\ram_w_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[2]),
        .Q(\ram_w_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[30]),
        .Q(\ram_w_data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[31]),
        .Q(\ram_w_data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[3]),
        .Q(\ram_w_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[4]),
        .Q(\ram_w_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[5]),
        .Q(\ram_w_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[6]),
        .Q(\ram_w_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[7]),
        .Q(\ram_w_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[8]),
        .Q(\ram_w_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ram_w_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ram_w_data),
        .D(s00_axi_wdata[9]),
        .Q(\ram_w_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_w_en_i_1
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .O(ram_w_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ram_w_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ram_w_en_i_1_n_0),
        .Q(ram_w_en),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \ram_wstrb[3]_i_1 
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_wvalid),
        .O(ram_w_en0));
  FDSE #(
    .INIT(1'b1)) 
    \ram_wstrb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ram_w_en0),
        .D(s00_axi_wstrb[0]),
        .Q(ram_wstrb[0]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \ram_wstrb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ram_w_en0),
        .D(s00_axi_wstrb[1]),
        .Q(ram_wstrb[1]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \ram_wstrb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ram_w_en0),
        .D(s00_axi_wstrb[2]),
        .Q(ram_wstrb[2]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \ram_wstrb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ram_w_en0),
        .D(s00_axi_wstrb[3]),
        .Q(ram_wstrb[3]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s00_axi_arready_INST_0
       (.I0(S_AXI_RVALID_reg_0),
        .I1(ram_r_en),
        .O(s00_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0B000000)) 
    w_ready0
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .O(w_ready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    w_ready_i_1
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    w_ready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(w_ready0__0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "axil_top" *) 
module design_1_axil_top_0_0_axil_top
   (s00_axi_rdata,
    S_AXI_WREADY,
    S_AXI_RVALID_reg,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_rready);
  output [31:0]s00_axi_rdata;
  output S_AXI_WREADY;
  output S_AXI_RVALID_reg;
  output s00_axi_bvalid;
  output s00_axi_arready;
  input s00_axi_aclk;
  input [7:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input [7:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_rready;

  wire S_AXI_RVALID_reg;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_axil_top_0_0_axil_interface axil_interface_S00
       (.S_AXI_AWREADY(S_AXI_WREADY),
        .S_AXI_RVALID_reg_0(S_AXI_RVALID_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "ram" *) 
module design_1_axil_top_0_0_ram
   (s00_axi_rdata,
    s00_axi_aclk,
    ram_r_en,
    ram_w_en,
    s00_axi_araddr,
    Q,
    ram_block_reg_0,
    ram_block_reg_1);
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input ram_r_en;
  input ram_w_en;
  input [7:0]s00_axi_araddr;
  input [7:0]Q;
  input [31:0]ram_block_reg_0;
  input [3:0]ram_block_reg_1;

  wire [7:0]Q;
  wire [31:0]ram_block_reg_0;
  wire [3:0]ram_block_reg_1;
  wire ram_r_en;
  wire ram_w_en;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire [31:0]s00_axi_rdata;
  wire NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_block_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_block_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_block_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_block_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_block_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_block_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_block_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_block_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_block_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "design_1_axil_top_0_0/inst/axil_interface_S00/ram_0/ram_block_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    ram_block_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,s00_axi_araddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_ram_block_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(ram_block_reg_0),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(s00_axi_rdata),
        .DOBDO(NLW_ram_block_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_block_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_block_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_block_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ram_r_en),
        .ENBWREN(ram_w_en),
        .INJECTDBITERR(NLW_ram_block_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_block_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_block_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_block_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_block_reg_1}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
