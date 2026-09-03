

`timescale 1 ns / 1 ps

module axil_interface #(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line

    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH = 8
) (
    // Users to add ports here

    // User ports ends
    // Do not modify the ports beyond this line

    // Global Clock Signal
    input wire S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input wire S_AXI_ARESETN,
    // Write address (issued by master, acceped by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
    // privilege and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
    // valid write address and control information.
    input wire S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
    // to accept an address and associated control signals.
    output wire S_AXI_AWREADY,
    // Write data (issued by master, acceped by Slave)
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
    // valid data. There is one write strobe bit for each eight
    // bits of the write data bus.
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
    // data and strobes are available.
    input wire S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    output wire S_AXI_WREADY,
    // Write response. This signal indicates the status
    // of the write transaction.
    output wire [1 : 0] S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
    // is signaling a valid write response.
    output wire S_AXI_BVALID,
    // Response ready. This signal indicates that the master
    // can accept a write response.
    input wire S_AXI_BREADY,
    // Read address (issued by master, acceped by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether the
    // transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
    // is signaling valid read address and control information.
    input wire S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
    // ready to accept an address and associated control signals.
    output wire S_AXI_ARREADY,
    // Read data (issued by slave)
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response. This signal indicates the status of the
    // read transfer.
    output wire [1 : 0] S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
    // signaling the required read data.
    output wire S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    input wire S_AXI_RREADY
);

//Instantiate block ram
wire [C_AXI_ADDR_WIDTH-1:0] ram_addr;
wire [C_AXI_DATA_WIDTH-1:0] ram_out;
wire [C_AXI_DATA_WIDTH-1:0] ram_in;
wire ram_en, ram_wen;

ram #(
    .DATA_WIDTH(C_AXI_DATA_WIDTH),
    .ADDR_WIDTH(C_AXI_ADDR_WIDTH)
) ram_0 (
    .clk(S_AXI_ACLK),
    .en(ram_en),
    .we(ram_wen),
    .addr(ram_addr),
    .data_in(ram_in),
    .data_out(ram_out)
);

//Write channel


    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    //
    // Formal properties
    // {{{
    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
`ifdef FORMAL
    ////////////////////////////////////////////////////////////////////////
    //
    // The AXI-lite control interface
    //
    ////////////////////////////////////////////////////////////////////////
    //
    // {{{
    localparam F_AXIL_LGDEPTH = 4;
    wire [F_AXIL_LGDEPTH-1:0] faxil_rd_outstanding, faxil_wr_outstanding, faxil_awr_outstanding;

    faxil_slave #(
        // {{{
        .C_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
        .C_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH),
        .F_LGDEPTH(F_AXIL_LGDEPTH),
        .F_AXI_MAXWAIT(3),
        .F_AXI_MAXDELAY(3),
        .F_AXI_MAXRSTALL(5),
        .F_OPT_COVER_BURST(4)
        // }}}
    ) faxil (
        // {{{
        .i_clk(S_AXI_ACLK),
        .i_axi_reset_n(S_AXI_ARESETN),
        //
        .i_axi_awvalid(S_AXI_AWVALID),
        .i_axi_awready(S_AXI_AWREADY),
        .i_axi_awaddr(S_AXI_AWADDR),
        .i_axi_awprot(S_AXI_AWPROT),
        //
        .i_axi_wvalid(S_AXI_WVALID),
        .i_axi_wready(S_AXI_WREADY),
        .i_axi_wdata(S_AXI_WDATA),
        .i_axi_wstrb(S_AXI_WSTRB),
        //
        .i_axi_bvalid(S_AXI_BVALID),
        .i_axi_bready(S_AXI_BREADY),
        .i_axi_bresp(S_AXI_BRESP),
        //
        .i_axi_arvalid(S_AXI_ARVALID),
        .i_axi_arready(S_AXI_ARREADY),
        .i_axi_araddr(S_AXI_ARADDR),
        .i_axi_arprot(S_AXI_ARPROT),
        //
        .i_axi_rvalid(S_AXI_RVALID),
        .i_axi_rready(S_AXI_RREADY),
        .i_axi_rdata(S_AXI_RDATA),
        .i_axi_rresp(S_AXI_RRESP),
        //
        .f_axi_rd_outstanding(faxil_rd_outstanding),
        .f_axi_wr_outstanding(faxil_wr_outstanding),
        .f_axi_awr_outstanding(faxil_awr_outstanding)
        // }}}
    );

    always_comb
        if (OPT_SKIDBUFFER) begin
            assert (faxil_awr_outstanding == (S_AXI_BVALID ? 1 : 0) + (S_AXI_AWREADY ? 0 : 1));
            assert (faxil_wr_outstanding == (S_AXI_BVALID ? 1 : 0) + (S_AXI_WREADY ? 0 : 1));

            assert (faxil_rd_outstanding == (S_AXI_RVALID ? 1 : 0) + (S_AXI_ARREADY ? 0 : 1));
        end else begin
            assert (faxil_wr_outstanding == (S_AXI_BVALID ? 1 : 0));
            assert (faxil_awr_outstanding == faxil_wr_outstanding);

            assert (faxil_rd_outstanding == (S_AXI_RVALID ? 1 : 0));
        end

    //
    // Check that our low-power only logic works by verifying that anytime
    // S_AXI_RVALID is inactive, then the outgoing data is also zero.
    //
    always_comb if (OPT_LOWPOWER && !S_AXI_RVALID) assert (S_AXI_RDATA == 0);

    ////////////////////////////////////////////////////////////////////////
    //
    // Cover checks
    //
    ////////////////////////////////////////////////////////////////////////
    //
    // {{{

    // While there are already cover properties in the formal property
    // set above, you'll probably still want to cover something
    // application specific here
`endif
    // }}}

endmodule
