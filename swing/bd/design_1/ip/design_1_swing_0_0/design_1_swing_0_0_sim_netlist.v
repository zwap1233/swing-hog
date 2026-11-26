// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Nov 26 09:22:08 2026
// Host        : fid2310 running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/fid/swing-hog/swing/bd/design_1/ip/design_1_swing_0_0/design_1_swing_0_0_sim_netlist.v
// Design      : design_1_swing_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_swing_0_0,swing,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "swing,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_swing_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [9:0]s00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [9:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [9:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [9:0]s00_axi_awaddr;
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
  design_1_swing_0_0_swing inst
       (.S_AXI_RVALID_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[9:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[9:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axil_interface" *) 
module design_1_swing_0_0_axil_interface
   (S_AXI_RVALID_reg_0,
    S_AXI_AWREADY,
    s00_axi_rdata,
    ram_din,
    s00_axi_bvalid,
    WEA,
    ADDRARDADDR,
    s00_axi_arready,
    ram_enaA,
    s00_axi_aresetn,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_awvalid,
    s00_axi_wstrb,
    DOADO,
    s00_axi_arvalid);
  output S_AXI_RVALID_reg_0;
  output S_AXI_AWREADY;
  output [31:0]s00_axi_rdata;
  output [31:0]ram_din;
  output s00_axi_bvalid;
  output [3:0]WEA;
  output [7:0]ADDRARDADDR;
  output s00_axi_arready;
  output ram_enaA;
  input s00_axi_aresetn;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input [7:0]s00_axi_araddr;
  input [7:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input [31:0]DOADO;
  input s00_axi_arvalid;

  wire [7:0]ADDRARDADDR;
  wire [31:0]DOADO;
  wire S_AXI_AWREADY;
  wire S_AXI_BVALID_i_1_n_0;
  wire S_AXI_RVALID_i_1_n_0;
  wire S_AXI_RVALID_reg_0;
  wire [3:0]WEA;
  wire p_0_in;
  wire [31:0]ram_din;
  wire \ram_din[31]_i_1_n_0 ;
  wire ram_dout_valid;
  wire ram_dout_valid_i_1_n_0;
  wire ram_enaA;
  wire [7:0]ram_r_addr;
  wire [0:0]ram_r_addr_0;
  wire [31:0]ram_r_data_buffer;
  wire \ram_r_data_buffer[31]_i_1_n_0 ;
  wire ram_r_en;
  wire ram_r_en_i_1_n_0;
  wire [7:0]ram_w_addr;
  wire ram_w_addr0;
  wire ram_w_en;
  wire ram_w_en_i_1_n_0;
  wire [3:0]ram_w_wen;
  wire \ram_w_wen[0]_i_1_n_0 ;
  wire \ram_w_wen[1]_i_1_n_0 ;
  wire \ram_w_wen[2]_i_1_n_0 ;
  wire \ram_w_wen[3]_i_1_n_0 ;
  wire \ram_w_wen[3]_i_2_n_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7350)) 
    S_AXI_RVALID_i_1
       (.I0(s00_axi_rready),
        .I1(ram_w_en),
        .I2(S_AXI_RVALID_reg_0),
        .I3(ram_r_en),
        .O(S_AXI_RVALID_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_RVALID_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(S_AXI_RVALID_reg_0),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    ram_block_reg_i_1
       (.I0(ram_w_en),
        .I1(ram_r_en),
        .O(ram_enaA));
  LUT2 #(
    .INIT(4'h8)) 
    ram_block_reg_i_10
       (.I0(ram_w_en),
        .I1(ram_w_wen[3]),
        .O(WEA[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_block_reg_i_11
       (.I0(ram_w_en),
        .I1(ram_w_wen[2]),
        .O(WEA[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_block_reg_i_12
       (.I0(ram_w_en),
        .I1(ram_w_wen[1]),
        .O(WEA[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_block_reg_i_13
       (.I0(ram_w_en),
        .I1(ram_w_wen[0]),
        .O(WEA[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_2
       (.I0(ram_w_addr[7]),
        .I1(ram_r_addr[7]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_3
       (.I0(ram_w_addr[6]),
        .I1(ram_r_addr[6]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_4
       (.I0(ram_w_addr[5]),
        .I1(ram_r_addr[5]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_5
       (.I0(ram_w_addr[4]),
        .I1(ram_r_addr[4]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_6
       (.I0(ram_w_addr[3]),
        .I1(ram_r_addr[3]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_7
       (.I0(ram_w_addr[2]),
        .I1(ram_r_addr[2]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_8
       (.I0(ram_w_addr[1]),
        .I1(ram_r_addr[1]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    ram_block_reg_i_9
       (.I0(ram_w_addr[0]),
        .I1(ram_r_addr[0]),
        .I2(ram_w_en),
        .O(ADDRARDADDR[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \ram_din[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(\ram_din[31]_i_1_n_0 ));
  FDRE \ram_din_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(ram_din[0]),
        .R(1'b0));
  FDRE \ram_din_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(ram_din[10]),
        .R(1'b0));
  FDRE \ram_din_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(ram_din[11]),
        .R(1'b0));
  FDRE \ram_din_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(ram_din[12]),
        .R(1'b0));
  FDRE \ram_din_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(ram_din[13]),
        .R(1'b0));
  FDRE \ram_din_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(ram_din[14]),
        .R(1'b0));
  FDRE \ram_din_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(ram_din[15]),
        .R(1'b0));
  FDRE \ram_din_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(ram_din[16]),
        .R(1'b0));
  FDRE \ram_din_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(ram_din[17]),
        .R(1'b0));
  FDRE \ram_din_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(ram_din[18]),
        .R(1'b0));
  FDRE \ram_din_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(ram_din[19]),
        .R(1'b0));
  FDRE \ram_din_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(ram_din[1]),
        .R(1'b0));
  FDRE \ram_din_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(ram_din[20]),
        .R(1'b0));
  FDRE \ram_din_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(ram_din[21]),
        .R(1'b0));
  FDRE \ram_din_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(ram_din[22]),
        .R(1'b0));
  FDRE \ram_din_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(ram_din[23]),
        .R(1'b0));
  FDRE \ram_din_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(ram_din[24]),
        .R(1'b0));
  FDRE \ram_din_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(ram_din[25]),
        .R(1'b0));
  FDRE \ram_din_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(ram_din[26]),
        .R(1'b0));
  FDRE \ram_din_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(ram_din[27]),
        .R(1'b0));
  FDRE \ram_din_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(ram_din[28]),
        .R(1'b0));
  FDRE \ram_din_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(ram_din[29]),
        .R(1'b0));
  FDRE \ram_din_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(ram_din[2]),
        .R(1'b0));
  FDRE \ram_din_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(ram_din[30]),
        .R(1'b0));
  FDRE \ram_din_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(ram_din[31]),
        .R(1'b0));
  FDRE \ram_din_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(ram_din[3]),
        .R(1'b0));
  FDRE \ram_din_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(ram_din[4]),
        .R(1'b0));
  FDRE \ram_din_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(ram_din[5]),
        .R(1'b0));
  FDRE \ram_din_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(ram_din[6]),
        .R(1'b0));
  FDRE \ram_din_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(ram_din[7]),
        .R(1'b0));
  FDRE \ram_din_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(ram_din[8]),
        .R(1'b0));
  FDRE \ram_din_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ram_din[31]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(ram_din[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h4)) 
    ram_dout_valid_i_1
       (.I0(ram_w_en),
        .I1(ram_r_en),
        .O(ram_dout_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ram_dout_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ram_dout_valid_i_1_n_0),
        .Q(ram_dout_valid),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0008)) 
    \ram_r_addr[7]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_RVALID_reg_0),
        .I3(ram_r_en),
        .O(ram_r_addr_0));
  FDRE \ram_r_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[0]),
        .Q(ram_r_addr[0]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[1]),
        .Q(ram_r_addr[1]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[2]),
        .Q(ram_r_addr[2]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[3]),
        .Q(ram_r_addr[3]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[4]),
        .Q(ram_r_addr[4]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[5]),
        .Q(ram_r_addr[5]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[6]),
        .Q(ram_r_addr[6]),
        .R(1'b0));
  FDRE \ram_r_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ram_r_addr_0),
        .D(s00_axi_araddr[7]),
        .Q(ram_r_addr[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2A2A002A)) 
    \ram_r_data_buffer[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_rready),
        .I2(S_AXI_RVALID_reg_0),
        .I3(ram_r_en),
        .I4(ram_w_en),
        .O(\ram_r_data_buffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[0]),
        .Q(ram_r_data_buffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[10]),
        .Q(ram_r_data_buffer[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[11]),
        .Q(ram_r_data_buffer[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[12]),
        .Q(ram_r_data_buffer[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[13]),
        .Q(ram_r_data_buffer[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[14]),
        .Q(ram_r_data_buffer[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[15]),
        .Q(ram_r_data_buffer[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[16]),
        .Q(ram_r_data_buffer[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[17]),
        .Q(ram_r_data_buffer[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[18]),
        .Q(ram_r_data_buffer[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[19]),
        .Q(ram_r_data_buffer[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[1]),
        .Q(ram_r_data_buffer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[20]),
        .Q(ram_r_data_buffer[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[21]),
        .Q(ram_r_data_buffer[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[22]),
        .Q(ram_r_data_buffer[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[23]),
        .Q(ram_r_data_buffer[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[24]),
        .Q(ram_r_data_buffer[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[25]),
        .Q(ram_r_data_buffer[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[26]),
        .Q(ram_r_data_buffer[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[27]),
        .Q(ram_r_data_buffer[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[28]),
        .Q(ram_r_data_buffer[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[29]),
        .Q(ram_r_data_buffer[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[2]),
        .Q(ram_r_data_buffer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[30]),
        .Q(ram_r_data_buffer[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[31]),
        .Q(ram_r_data_buffer[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[3]),
        .Q(ram_r_data_buffer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[4]),
        .Q(ram_r_data_buffer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[5]),
        .Q(ram_r_data_buffer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[6]),
        .Q(ram_r_data_buffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[7]),
        .Q(ram_r_data_buffer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[8]),
        .Q(ram_r_data_buffer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_r_data_buffer_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\ram_r_data_buffer[31]_i_1_n_0 ),
        .D(s00_axi_rdata[9]),
        .Q(ram_r_data_buffer[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF022)) 
    ram_r_en_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_RVALID_reg_0),
        .I2(ram_w_en),
        .I3(ram_r_en),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ram_w_wen[0]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wstrb[0]),
        .O(\ram_w_wen[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ram_w_wen[1]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wstrb[1]),
        .O(\ram_w_wen[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ram_w_wen[2]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wstrb[2]),
        .O(\ram_w_wen[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \ram_w_wen[3]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(ram_w_en),
        .O(\ram_w_wen[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ram_w_wen[3]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wstrb[3]),
        .O(\ram_w_wen[3]_i_2_n_0 ));
  FDRE \ram_w_wen_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ram_w_wen[3]_i_1_n_0 ),
        .D(\ram_w_wen[0]_i_1_n_0 ),
        .Q(ram_w_wen[0]),
        .R(p_0_in));
  FDRE \ram_w_wen_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ram_w_wen[3]_i_1_n_0 ),
        .D(\ram_w_wen[1]_i_1_n_0 ),
        .Q(ram_w_wen[1]),
        .R(p_0_in));
  FDRE \ram_w_wen_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ram_w_wen[3]_i_1_n_0 ),
        .D(\ram_w_wen[2]_i_1_n_0 ),
        .Q(ram_w_wen[2]),
        .R(p_0_in));
  FDRE \ram_w_wen_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ram_w_wen[3]_i_1_n_0 ),
        .D(\ram_w_wen[3]_i_2_n_0 ),
        .Q(ram_w_wen[3]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s00_axi_arready_INST_0
       (.I0(S_AXI_RVALID_reg_0),
        .I1(ram_r_en),
        .O(s00_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(ram_r_data_buffer[0]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(DOADO[10]),
        .I1(ram_r_data_buffer[10]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(DOADO[11]),
        .I1(ram_r_data_buffer[11]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(DOADO[12]),
        .I1(ram_r_data_buffer[12]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(DOADO[13]),
        .I1(ram_r_data_buffer[13]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(DOADO[14]),
        .I1(ram_r_data_buffer[14]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(DOADO[15]),
        .I1(ram_r_data_buffer[15]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(DOADO[16]),
        .I1(ram_r_data_buffer[16]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(DOADO[17]),
        .I1(ram_r_data_buffer[17]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(DOADO[18]),
        .I1(ram_r_data_buffer[18]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(DOADO[19]),
        .I1(ram_r_data_buffer[19]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(ram_r_data_buffer[1]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(DOADO[20]),
        .I1(ram_r_data_buffer[20]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(DOADO[21]),
        .I1(ram_r_data_buffer[21]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(DOADO[22]),
        .I1(ram_r_data_buffer[22]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(DOADO[23]),
        .I1(ram_r_data_buffer[23]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(DOADO[24]),
        .I1(ram_r_data_buffer[24]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(DOADO[25]),
        .I1(ram_r_data_buffer[25]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(DOADO[26]),
        .I1(ram_r_data_buffer[26]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(DOADO[27]),
        .I1(ram_r_data_buffer[27]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(DOADO[28]),
        .I1(ram_r_data_buffer[28]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(DOADO[29]),
        .I1(ram_r_data_buffer[29]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(ram_r_data_buffer[2]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(DOADO[30]),
        .I1(ram_r_data_buffer[30]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(DOADO[31]),
        .I1(ram_r_data_buffer[31]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(ram_r_data_buffer[3]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(ram_r_data_buffer[4]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(ram_r_data_buffer[5]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(ram_r_data_buffer[6]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(ram_r_data_buffer[7]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(DOADO[8]),
        .I1(ram_r_data_buffer[8]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(DOADO[9]),
        .I1(ram_r_data_buffer[9]),
        .I2(ram_dout_valid),
        .O(s00_axi_rdata[9]));
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

(* ORIG_REF_NAME = "bram" *) 
module design_1_swing_0_0_bram
   (DOADO,
    s00_axi_aclk,
    ram_enaA,
    ADDRARDADDR,
    ram_din,
    WEA);
  output [31:0]DOADO;
  input s00_axi_aclk;
  input ram_enaA;
  input [7:0]ADDRARDADDR;
  input [31:0]ram_din;
  input [3:0]WEA;

  wire [7:0]ADDRARDADDR;
  wire [31:0]DOADO;
  wire [3:0]WEA;
  wire ram_block_reg_n_36;
  wire ram_block_reg_n_37;
  wire ram_block_reg_n_38;
  wire ram_block_reg_n_39;
  wire ram_block_reg_n_40;
  wire ram_block_reg_n_41;
  wire ram_block_reg_n_42;
  wire ram_block_reg_n_43;
  wire ram_block_reg_n_44;
  wire ram_block_reg_n_45;
  wire ram_block_reg_n_46;
  wire ram_block_reg_n_47;
  wire ram_block_reg_n_48;
  wire ram_block_reg_n_49;
  wire ram_block_reg_n_50;
  wire ram_block_reg_n_51;
  wire ram_block_reg_n_52;
  wire ram_block_reg_n_53;
  wire ram_block_reg_n_54;
  wire ram_block_reg_n_55;
  wire ram_block_reg_n_56;
  wire ram_block_reg_n_57;
  wire ram_block_reg_n_58;
  wire ram_block_reg_n_59;
  wire ram_block_reg_n_60;
  wire ram_block_reg_n_61;
  wire ram_block_reg_n_62;
  wire ram_block_reg_n_63;
  wire ram_block_reg_n_64;
  wire ram_block_reg_n_65;
  wire ram_block_reg_n_66;
  wire ram_block_reg_n_67;
  wire [31:0]ram_din;
  wire ram_enaA;
  wire s00_axi_aclk;
  wire NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_block_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_block_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_block_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_block_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_ram_block_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_block_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_block_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_block_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "bram/ram_block_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_01(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_02(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_03(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_04(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_05(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_06(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_07(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_08(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_09(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_0A(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_0B(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_0C(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_0D(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_0E(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_0F(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_10(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_11(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_12(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_13(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_14(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_15(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_16(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_17(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_18(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_19(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_1A(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_1B(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_1C(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_1D(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_1E(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_1F(256'h0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
       (.ADDRARDADDR({1'b1,1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DBITERR(NLW_ram_block_reg_DBITERR_UNCONNECTED),
        .DIADI(ram_din),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO({ram_block_reg_n_36,ram_block_reg_n_37,ram_block_reg_n_38,ram_block_reg_n_39,ram_block_reg_n_40,ram_block_reg_n_41,ram_block_reg_n_42,ram_block_reg_n_43,ram_block_reg_n_44,ram_block_reg_n_45,ram_block_reg_n_46,ram_block_reg_n_47,ram_block_reg_n_48,ram_block_reg_n_49,ram_block_reg_n_50,ram_block_reg_n_51,ram_block_reg_n_52,ram_block_reg_n_53,ram_block_reg_n_54,ram_block_reg_n_55,ram_block_reg_n_56,ram_block_reg_n_57,ram_block_reg_n_58,ram_block_reg_n_59,ram_block_reg_n_60,ram_block_reg_n_61,ram_block_reg_n_62,ram_block_reg_n_63,ram_block_reg_n_64,ram_block_reg_n_65,ram_block_reg_n_66,ram_block_reg_n_67}),
        .DOPADOP(NLW_ram_block_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_block_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_block_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ram_enaA),
        .ENBWREN(1'b0),
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
        .WEA(WEA),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "swing" *) 
module design_1_swing_0_0_swing
   (S_AXI_RVALID_reg,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_aresetn,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_bready,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_arvalid);
  output S_AXI_RVALID_reg;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_arready;
  input s00_axi_aresetn;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input [7:0]s00_axi_araddr;
  input [7:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_bready;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;

  wire S_AXI_RVALID_reg;
  wire [7:0]ram_addrA;
  wire [31:0]ram_dinA;
  wire [31:0]ram_doutA;
  wire ram_enaA;
  wire [3:0]ram_weA;
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
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_swing_0_0_axil_interface axil_interface_S00
       (.ADDRARDADDR(ram_addrA),
        .DOADO(ram_doutA),
        .S_AXI_AWREADY(s00_axi_wready),
        .S_AXI_RVALID_reg_0(S_AXI_RVALID_reg),
        .WEA(ram_weA),
        .ram_din(ram_dinA),
        .ram_enaA(ram_enaA),
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
  design_1_swing_0_0_bram bram_0
       (.ADDRARDADDR(ram_addrA),
        .DOADO(ram_doutA),
        .WEA(ram_weA),
        .ram_din(ram_dinA),
        .ram_enaA(ram_enaA),
        .s00_axi_aclk(s00_axi_aclk));
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
