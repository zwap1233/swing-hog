

`timescale 1 ns / 1 ps

module swing #(
    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 10,

    // Parameters of Axi Slave Bus Interface S01_AXI
    parameter integer C_S01_AXI_DATA_WIDTH = 32,
    parameter integer C_S01_AXI_ADDR_WIDTH = 2
) (

    input wire aclk,
    input wire aresetn,

    // Ports of Axi Slave Bus Interface S00_AXI
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire s00_axi_awvalid,
    output wire s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire s00_axi_wvalid,
    output wire s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire s00_axi_bvalid,
    input wire s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire s00_axi_arvalid,
    output wire s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire s00_axi_rvalid,
    input wire s00_axi_rready,

    // Ports of Axi Slave Bus Interface S01_AXI
    input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_awaddr,
    input wire [2 : 0] s01_axi_awprot,
    input wire s01_axi_awvalid,
    output wire s01_axi_awready,
    input wire [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_wdata,
    input wire [(C_S01_AXI_DATA_WIDTH/8)-1 : 0] s01_axi_wstrb,
    input wire s01_axi_wvalid,
    output wire s01_axi_wready,
    output wire [1 : 0] s01_axi_bresp,
    output wire s01_axi_bvalid,
    input wire s01_axi_bready,
    input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_araddr,
    input wire [2 : 0] s01_axi_arprot,
    input wire s01_axi_arvalid,
    output wire s01_axi_arready,
    output wire [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_rdata,
    output wire [1 : 0] s01_axi_rresp,
    output wire s01_axi_rvalid,
    input wire s01_axi_rready

);

`ifndef F_AXIL_CTRLREG

    wire ram_enaA;
    wire [(C_S00_AXI_DATA_WIDTH/8)-1:0] ram_weA;
    wire [C_S00_AXI_ADDR_WIDTH-3:0] ram_addrA;
    wire [C_S00_AXI_DATA_WIDTH-1:0] ram_dinA;
    wire [C_S00_AXI_DATA_WIDTH-1:0] ram_doutA;

    wire ram_enaB;
    wire [(C_S00_AXI_DATA_WIDTH/8)-1:0] ram_weB;
    wire [C_S00_AXI_ADDR_WIDTH-3:0] ram_addrB;
    wire [C_S00_AXI_DATA_WIDTH-1:0] ram_dinB;
    wire [C_S00_AXI_DATA_WIDTH-1:0] ram_doutB;

    bram #(
        .ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH - 2),  //-2 because the bram isnt byte addressable
        .DATA_WIDTH(C_S00_AXI_DATA_WIDTH)
    ) bram_0 (
        .clk(aclk),

        .enaA (ram_enaA),
        .weA  (ram_weA),
        .addrA(ram_addrA),
        .dinA (ram_dinA),
        .doutA(ram_doutA),

        .enaB (ram_enaB),
        .weB  (ram_weB),
        .addrB(ram_addrB),
        .dinB (ram_dinB),
        .doutB(ram_doutB)
    );

    // Instantiation of Axi Bus Interface S00_AXI
    axil_ram_port #(
        .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
    ) axil_interface_S00 (
        .S_AXI_ACLK(aclk),
        .S_AXI_ARESETN(aresetn),
        .S_AXI_AWADDR(s00_axi_awaddr),
        .S_AXI_AWPROT(s00_axi_awprot),
        .S_AXI_AWVALID(s00_axi_awvalid),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WDATA(s00_axi_wdata),
        .S_AXI_WSTRB(s00_axi_wstrb),
        .S_AXI_WVALID(s00_axi_wvalid),
        .S_AXI_WREADY(s00_axi_wready),
        .S_AXI_BRESP(s00_axi_bresp),
        .S_AXI_BVALID(s00_axi_bvalid),
        .S_AXI_BREADY(s00_axi_bready),
        .S_AXI_ARADDR(s00_axi_araddr),
        .S_AXI_ARPROT(s00_axi_arprot),
        .S_AXI_ARVALID(s00_axi_arvalid),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_RDATA(s00_axi_rdata),
        .S_AXI_RRESP(s00_axi_rresp),
        .S_AXI_RVALID(s00_axi_rvalid),
        .S_AXI_RREADY(s00_axi_rready),

        .ram_en  (ram_enaA),
        .ram_wen (ram_weA),
        .ram_addr(ram_addrA),
        .ram_din (ram_dinA),
        .ram_dout(ram_doutA)
    );

`endif

`ifndef F_AXIL_RAMPORT

    wire [C_S01_AXI_DATA_WIDTH-1:0] ctrl_reg;

    axil_ctrl_port #(
        .C_S_AXI_DATA_WIDTH(C_S01_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_S01_AXI_ADDR_WIDTH)
    ) axil_interface_S01 (
        .S_AXI_ACLK(aclk),
        .S_AXI_ARESETN(aresetn),
        .S_AXI_AWADDR(s01_axi_awaddr),
        .S_AXI_AWPROT(s01_axi_awprot),
        .S_AXI_AWVALID(s01_axi_awvalid),
        .S_AXI_AWREADY(s01_axi_awready),
        .S_AXI_WDATA(s01_axi_wdata),
        .S_AXI_WSTRB(s01_axi_wstrb),
        .S_AXI_WVALID(s01_axi_wvalid),
        .S_AXI_WREADY(s01_axi_wready),
        .S_AXI_BRESP(s01_axi_bresp),
        .S_AXI_BVALID(s01_axi_bvalid),
        .S_AXI_BREADY(s01_axi_bready),
        .S_AXI_ARADDR(s01_axi_araddr),
        .S_AXI_ARPROT(s01_axi_arprot),
        .S_AXI_ARVALID(s01_axi_arvalid),
        .S_AXI_ARREADY(s01_axi_arready),
        .S_AXI_RDATA(s01_axi_rdata),
        .S_AXI_RRESP(s01_axi_rresp),
        .S_AXI_RVALID(s01_axi_rvalid),
        .S_AXI_RREADY(s01_axi_rready),

        .ctrl_reg(ctrl_reg)
    );

`endif

endmodule
