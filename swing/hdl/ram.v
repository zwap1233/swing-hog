
`timescale 1 ns / 1 ps

module ram #(
    //--------------------------------------------------------------------------
    parameter NUM_COL = 4,
    parameter COL_WIDTH = 8,
    parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = NUM_COL * COL_WIDTH  // Data Width in bits
    //----------------------------------------------------------------------
) (

    //Ram is only word addressable and not byte addressable.

    input clk,

    input enaA,
    input [NUM_COL-1:0] weA,
    input [ADDR_WIDTH-1:0] addrA,
    input [DATA_WIDTH-1:0] dinA,
    output reg [DATA_WIDTH-1:0] doutA,

    input enaB,
    input [NUM_COL-1:0] weB,
    input [ADDR_WIDTH-1:0] addrB,
    input [DATA_WIDTH-1:0] dinB,
    output reg [DATA_WIDTH-1:0] doutB
);

    // Core Memory
    reg [DATA_WIDTH-1:0] ram_block[(2**ADDR_WIDTH)-1:0];

    integer j;
    initial for (j = 0; j < 2 ** ADDR_WIDTH; j = j + 1) ram_block[j] = 32'hf;

    integer ia;
    // Port-A Operation
    always @(posedge clk) begin
        if (enaA) begin
            for (ia = 0; ia < NUM_COL; ia = ia + 1) begin
                if (weA[ia]) begin
                    ram_block[addrA][ia*COL_WIDTH+:COL_WIDTH] <= dinA[ia*COL_WIDTH+:COL_WIDTH];
                end
            end
            doutA <= ram_block[addrA];
        end
    end

    integer ib;
    // Port-B Operation:
    always @(posedge clk) begin
        if (enaB) begin
            for (ib = 0; ib < NUM_COL; ib = ib + 1) begin
                if (weB[ib]) begin
                    ram_block[addrB][ib*COL_WIDTH+:COL_WIDTH] <= dinB[ib*COL_WIDTH+:COL_WIDTH];
                end
            end

            doutB <= ram_block[addrB];
        end
    end

endmodule
