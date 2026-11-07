

`timescale 1 ns / 1 ps

module axil_interface #(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line

    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH = 10
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
    output reg S_AXI_BVALID,
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
    output reg S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    input wire S_AXI_RREADY

);
    // NOTE: using a register instead of block ram to simplefy things, this
    // will not work on the chip because this will use distributed ram of
    // which there isnt enough available

    // reg [C_S_AXI_DATA_WIDTH-1:0] ram[2**8];

    //Instantiate block ram
    reg ram_w_en;
    reg ram_r_en;
    reg [(C_S_AXI_DATA_WIDTH/8)-1:0] ram_wstrb;
    //minus 3 because we are throwing the 2 lsb away as the ram isnt byte
    //addressable.
    reg [C_S_AXI_ADDR_WIDTH-3:0] ram_w_addr;
    wire [C_S_AXI_ADDR_WIDTH-3:0] ram_r_addr;
    reg [C_S_AXI_DATA_WIDTH-1:0] ram_w_data;
    wire [C_S_AXI_DATA_WIDTH-1:0] ram_r_data;

    ram #() ram_0 (
        .clk(S_AXI_ACLK),

        .enaA(ram_w_en),
        .weA(ram_wstrb),
        .addrA(ram_w_addr),
        .dinA(ram_w_data),
        .doutA(),

        .enaB(ram_r_en),
        .weB(4'b0000),
        .addrB(ram_r_addr),
        .dinB(),
        .doutB(ram_r_data)
    );

    //============================= write channel

    reg w_ready;

    initial begin
        w_ready = 0;
        ram_w_en = 0;
        S_AXI_BVALID = 0;
        ram_wstrb = 4'b1111;
    end

    //We wait and stall the channel until both the data and address are valid
    //and only then do we set the ready signals high
    assign S_AXI_AWREADY = w_ready;
    assign S_AXI_WREADY  = w_ready;

    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            w_ready <= 0;
        end else begin
            //if w_ready is already high than we need to stall a clock cycle
            //because we need a clock pulse to transfer the write response
            //we wait until both the address and the data are valid and only
            //than do we set awready and wready high
            //if BVALID is high than the previous transaction hasnt been
            //completed so we need to stall by keeping awready and wready low,
            //if BREADY is high than that wont matter because the transaction
            //will be completed this clock edge and the bus if free to
            //transfer this transaction
            w_ready <= !w_ready && (S_AXI_AWVALID && S_AXI_WVALID) && (!S_AXI_BVALID || S_AXI_BREADY);
        end
    end

    assign S_AXI_BRESP = 2'b00;

    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) S_AXI_BVALID <= 0;
        else if (w_ready) S_AXI_BVALID <= 1;
        //BVALID needs to be set low again when the bresp is transfered, if
        //bvalid is already low this wont make a diffrence so checking for bvalid
        //is unecesary. and this can only happen if w_ready isnt high and the
        //wdata and addr have been transfered, if w_ready is high it is being
        //transfered this clock cycle. so we need to set bvalid high here and
        //not low even if bready is high.
        else if (S_AXI_BREADY) S_AXI_BVALID <= 0;
    end

    always @(posedge S_AXI_ACLK) if (S_AXI_AWREADY && S_AXI_AWVALID) ram_w_addr <= S_AXI_AWADDR[C_S_AXI_ADDR_WIDTH-1:2];

    //ram_w_en is set high after the transfer of the data, this can overlap
    //with BVALID however it cant be tied to BVALID because BVALID can be high for
    //more than one clock cycle if BREADY is not also set high.
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            ram_w_en <= 0;
            ram_wstrb <= 4'b1111;
        end else if (S_AXI_WREADY && S_AXI_WVALID) begin
            ram_w_data <= S_AXI_WDATA + 1;
            ram_wstrb <= 4'b0011;
            ram_w_en   <= 1;
        end else if (ram_w_en == 1) ram_w_en <= 0;
    end

    //============================= read channel

    initial begin
        S_AXI_RVALID = 0;
        ram_r_en = 0;
    end

    //transfer data
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_RVALID <= 0;
            ram_r_en <= 0;
        end else if (S_AXI_ARREADY && S_AXI_ARVALID) begin
            ram_r_en <= 1;
        end else if (ram_r_en) begin
            ram_r_en <= 0;
            S_AXI_RVALID <= 1;
        end else if (S_AXI_RREADY && S_AXI_RVALID) begin
            S_AXI_RVALID <= 0;
        end
    end

    assign ram_r_addr = S_AXI_ARADDR[C_S_AXI_ADDR_WIDTH-1:2];
    assign S_AXI_RDATA = ram_r_data;


    //the channel is ready for a new transfer when the read data has been
    //transfered and it is not reading from the block ram.
    assign S_AXI_ARREADY = ~S_AXI_RVALID && ~ram_r_en;
    assign S_AXI_RRESP = 2'b00;

    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    //
    // Formal properties
    //
    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
`ifdef FORMAL
    ////////////////////////////////////////////////////////////////////////
    //
    // The AXI-lite control interface
    //
    ////////////////////////////////////////////////////////////////////////
    localparam OPT_SKIDBUFFER = 0;
    localparam OPT_LOWPOWER   = 0;


    localparam F_AXIL_LGDEPTH = 4;
    wire [F_AXIL_LGDEPTH-1:0] faxil_rd_outstanding, faxil_wr_outstanding, faxil_awr_outstanding;

    faxil_slave #(

        .C_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
        .C_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
        .F_LGDEPTH(F_AXIL_LGDEPTH),
        .F_AXI_MAXWAIT(3),
        .F_AXI_MAXDELAY(3),
        .F_AXI_MAXRSTALL(5),
        .F_OPT_COVER_BURST(4)

    ) faxil (

        .i_clk(S_AXI_ACLK),
        .i_axi_reset_n(S_AXI_ARESETN),

        .i_axi_awvalid(S_AXI_AWVALID),
        .i_axi_awready(S_AXI_AWREADY),
        .i_axi_awaddr (S_AXI_AWADDR),
        .i_axi_awprot (S_AXI_AWPROT),

        .i_axi_wvalid(S_AXI_WVALID),
        .i_axi_wready(S_AXI_WREADY),
        .i_axi_wdata (S_AXI_WDATA),
        .i_axi_wstrb (S_AXI_WSTRB),

        .i_axi_bvalid(S_AXI_BVALID),
        .i_axi_bready(S_AXI_BREADY),
        .i_axi_bresp (S_AXI_BRESP),

        .i_axi_arvalid(S_AXI_ARVALID),
        .i_axi_arready(S_AXI_ARREADY),
        .i_axi_araddr (S_AXI_ARADDR),
        .i_axi_arprot (S_AXI_ARPROT),

        .i_axi_rvalid(S_AXI_RVALID),
        .i_axi_rready(S_AXI_RREADY),
        .i_axi_rdata (S_AXI_RDATA),
        .i_axi_rresp (S_AXI_RRESP),

        .f_axi_rd_outstanding (faxil_rd_outstanding),
        .f_axi_wr_outstanding (faxil_wr_outstanding),
        .f_axi_awr_outstanding(faxil_awr_outstanding)

    );

    always_comb
        if (OPT_SKIDBUFFER) begin
            assert (faxil_awr_outstanding == (S_AXI_BVALID ? 1 : 0) + (S_AXI_AWREADY ? 0 : 1));
            assert (faxil_wr_outstanding == (S_AXI_BVALID ? 1 : 0) + (S_AXI_WREADY ? 0 : 1));

            assert (faxil_rd_outstanding == (S_AXI_RVALID ? 1 : 0) + (S_AXI_ARREADY ? 0 : 1));
        end else begin
            assert (faxil_wr_outstanding == (S_AXI_BVALID ? 1 : 0));
            assert (faxil_awr_outstanding == faxil_wr_outstanding);

            assert (faxil_rd_outstanding == ((S_AXI_RVALID || ram_r_en) ? 1 : 0));
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

`endif

endmodule
