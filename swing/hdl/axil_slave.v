
`timescale 1 ns / 1 ps

module axil_slave #(
    // {{{
    //
    // Size of the AXI-lite bus.  These are fixed, since 1) AXI-lite
    // is fixed at a width of 32-bits by Xilinx def'n, and 2) since
    // we only ever have 4 configuration words.
    parameter C_AXI_ADDR_WIDTH = 13,
    parameter C_AXI_DATA_WIDTH = 32,
    parameter [0:0] OPT_SKIDBUFFER = 1'b0,
    parameter [0:0] OPT_LOWPOWER = 0,

    parameter LED_COLUMNS = 100,
    parameter LED_ROWS = 15
    // }}}
) (
    // {{{
    input  wire                          S_AXI_ACLK,
    input  wire                          S_AXI_ARESETN,
    //
    input  wire                          S_AXI_AWVALID,
    output wire                          S_AXI_AWREADY,
    input  wire [  C_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input  wire [                   2:0] S_AXI_AWPROT,
    //
    input  wire                          S_AXI_WVALID,
    output wire                          S_AXI_WREADY,
    input  wire [  C_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input  wire [C_AXI_DATA_WIDTH/8-1:0] S_AXI_WSTRB,
    //
    output wire                          S_AXI_BVALID,
    input  wire                          S_AXI_BREADY,
    output wire [                   1:0] S_AXI_BRESP,
    //
    input  wire                          S_AXI_ARVALID,
    output wire                          S_AXI_ARREADY,
    input  wire [  C_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input  wire [                   2:0] S_AXI_ARPROT,
    //
    output wire                          S_AXI_RVALID,
    input  wire                          S_AXI_RREADY,
    output wire [  C_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output wire [                   1:0] S_AXI_RRESP
    // }}}
);

    ////////////////////////////////////////////////////////////////////////
    //
    // Register/wire signal declarations
    // {{{
    ////////////////////////////////////////////////////////////////////////
    //
    localparam ADDRLSB = $clog2(C_AXI_DATA_WIDTH) - 3;

    wire i_reset = !S_AXI_ARESETN;

    wire axil_write_ready;
    wire [C_AXI_ADDR_WIDTH-ADDRLSB-1:0] awskd_addr;
    //
    wire [C_AXI_DATA_WIDTH-1:0] wskd_data;
    wire [C_AXI_DATA_WIDTH/8-1:0] wskd_strb;
    reg axil_bvalid;
    //
    wire axil_read_ready;
    wire [C_AXI_ADDR_WIDTH-ADDRLSB-1:0] arskd_addr;
    reg [C_AXI_DATA_WIDTH-1:0] axil_read_data;
    reg axil_read_valid;

    reg [31:0] mem [LED_COLUMNS*LED_ROWS]; //columns*rows is the number of led posistion, each led uses one word, where the first 3 bytes are red green and blue.
    wire [31:0] wskd;
    // }}}
    ////////////////////////////////////////////////////////////////////////
    //
    // AXI-lite signaling
    //
    ////////////////////////////////////////////////////////////////////////
    //
    // {{{

    //
    // Write signaling
    //
    // {{{

    generate
        if (OPT_SKIDBUFFER) begin : gen_SKIDBUFFER_WRITE
            // {{{
            wire awskd_valid, wskd_valid;

            skidbuffer #(
                .OPT_OUTREG(0),
                .OPT_LOWPOWER(OPT_LOWPOWER),
                .DW(C_AXI_ADDR_WIDTH - ADDRLSB)
            ) axilawskid (  //
                .i_clk  (S_AXI_ACLK),
                .i_reset(i_reset),
                .i_valid(S_AXI_AWVALID),
                .o_ready(S_AXI_AWREADY),
                .i_data (S_AXI_AWADDR[C_AXI_ADDR_WIDTH-1:ADDRLSB]),
                .o_valid(awskd_valid),
                .i_ready(axil_write_ready),
                .o_data (awskd_addr)
            );

            skidbuffer #(
                .OPT_OUTREG(0),
                .OPT_LOWPOWER(OPT_LOWPOWER),
                .DW(C_AXI_DATA_WIDTH + C_AXI_DATA_WIDTH / 8)
            ) axilwskid (  //
                .i_clk  (S_AXI_ACLK),
                .i_reset(i_reset),
                .i_valid(S_AXI_WVALID),
                .o_ready(S_AXI_WREADY),
                .i_data ({S_AXI_WDATA, S_AXI_WSTRB}),
                .o_valid(wskd_valid),
                .i_ready(axil_write_ready),
                .o_data ({wskd_data, wskd_strb})
            );

            assign axil_write_ready = awskd_valid && wskd_valid && (!S_AXI_BVALID || S_AXI_BREADY);
            // }}}
        end else begin : gen_SIMPLE_WRITES
            // {{{
            reg axil_awready;

            initial axil_awready = 1'b0;
            always @(posedge S_AXI_ACLK)
                if (!S_AXI_ARESETN) axil_awready <= 1'b0;
                else
                    axil_awready <= !axil_awready
                    && (S_AXI_AWVALID && S_AXI_WVALID)
                    && (!S_AXI_BVALID || S_AXI_BREADY);

            assign S_AXI_AWREADY = axil_awready;
            assign S_AXI_WREADY = axil_awready;

            assign awskd_addr = S_AXI_AWADDR[C_AXI_ADDR_WIDTH-1:ADDRLSB];
            assign wskd_data = S_AXI_WDATA;
            assign wskd_strb = S_AXI_WSTRB;

            assign axil_write_ready = axil_awready;
            // }}}
        end
    endgenerate

    initial axil_bvalid = 0;
    always @(posedge S_AXI_ACLK)
        if (i_reset) axil_bvalid <= 0;
        else if (axil_write_ready) axil_bvalid <= 1;
        else if (S_AXI_BREADY) axil_bvalid <= 0;

    assign S_AXI_BVALID = axil_bvalid;
    assign S_AXI_BRESP  = 2'b00;
    // }}}

    //
    // Read signaling
    //
    // {{{

    generate
        if (OPT_SKIDBUFFER) begin : gen_SKIDBUFFER_READ
            // {{{
            wire arskd_valid;

            skidbuffer #(
                .OPT_OUTREG(0),
                .OPT_LOWPOWER(OPT_LOWPOWER),
                .DW(C_AXI_ADDR_WIDTH - ADDRLSB)
            ) axilarskid (  //
                .i_clk  (S_AXI_ACLK),
                .i_reset(i_reset),
                .i_valid(S_AXI_ARVALID),
                .o_ready(S_AXI_ARREADY),
                .i_data (S_AXI_ARADDR[C_AXI_ADDR_WIDTH-1:ADDRLSB]),
                .o_valid(arskd_valid),
                .i_ready(axil_read_ready),
                .o_data (arskd_addr)
            );

            assign axil_read_ready = arskd_valid && (!axil_read_valid || S_AXI_RREADY);
            // }}}
        end else begin : gen_SIMPLE_READS
            // {{{
            reg axil_arready;

            always_comb axil_arready = !S_AXI_RVALID;

            assign arskd_addr = S_AXI_ARADDR[C_AXI_ADDR_WIDTH-1:ADDRLSB];
            assign S_AXI_ARREADY = axil_arready;
            assign axil_read_ready = (S_AXI_ARVALID && S_AXI_ARREADY);
            // }}}
        end
    endgenerate

    initial axil_read_valid = 1'b0;
    always @(posedge S_AXI_ACLK)
        if (i_reset) axil_read_valid <= 1'b0;
        else if (axil_read_ready) axil_read_valid <= 1'b1;
        else if (S_AXI_RREADY) axil_read_valid <= 1'b0;

    assign S_AXI_RVALID = axil_read_valid;
    assign S_AXI_RDATA = axil_read_data;
    assign S_AXI_RRESP = 2'b00;
    // }}}

    // }}}
    ////////////////////////////////////////////////////////////////////////
    //
    // AXI-lite register logic
    //
    ////////////////////////////////////////////////////////////////////////
    //
    // {{{

    // apply_wstrb(old_data, new_data, write_strobes)
    assign wskd = apply_wstrb(mem[awskd_addr], wskd_data, wskd_strb);

    initial mem = '{default: '0};
    always @(posedge S_AXI_ACLK)
        if (i_reset) begin
            mem <= '{default: '0};
        end else if (axil_write_ready) begin
            mem[awskd_addr] <= wskd;
        end

    initial axil_read_data = 0;
    always @(posedge S_AXI_ACLK)
        if (OPT_LOWPOWER && !S_AXI_ARESETN) axil_read_data <= 0;
        else if (!S_AXI_RVALID || S_AXI_RREADY) begin
            axil_read_data <= mem[arskd_addr];
            if (OPT_LOWPOWER && !axil_read_ready) axil_read_data <= 0;
        end

    function [C_AXI_DATA_WIDTH-1:0] apply_wstrb;
        input [C_AXI_DATA_WIDTH-1:0] prior_data;
        input [C_AXI_DATA_WIDTH-1:0] new_data;
        input [C_AXI_DATA_WIDTH/8-1:0] wstrb;

        integer k;
        for (k = 0; k < C_AXI_DATA_WIDTH / 8; k = k + 1) begin
            apply_wstrb[k*8+:8] = wstrb[k] ? new_data[k*8+:8] : prior_data[k*8+:8];
        end
    endfunction
    // }}}

    // Make Verilator happy
    // {{{
    // Verilator lint_off UNUSED
    wire unused;
    assign unused = &{ 1'b0, S_AXI_AWPROT, S_AXI_ARPROT,
            S_AXI_ARADDR[ADDRLSB-1:0],
            S_AXI_AWADDR[ADDRLSB-1:0] };
endmodule

