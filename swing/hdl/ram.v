
`timescale 1 ns / 1 ps

module ram #(
    //--------------------------------------------------------------------------
    parameter NUM_COL = 4,
    parameter COL_WIDTH = 8,
    parameter ADDR_WIDTH = 8,
    // Addr Width in bits : 2 *ADDR_WIDTH = RAM Depth
    parameter DATA_WIDTH = NUM_COL * COL_WIDTH  // Data Width in bits
    //----------------------------------------------------------------------
) (
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


// module ram #(
//     parameter integer ADDR_WIDTH = 8,
//     parameter integer DATA_WIDTH = 32
// ) (
//     input i_clk,
//     input i_ena,
//     input [(DATA_WIDTH/8)-1:0] i_wea,
//     input [ADDR_WIDTH-1:0] i_addr_a,
//     input [DATA_WIDTH-1:0] i_data_a,
//
//     input i_enb,
//     input [ADDR_WIDTH-1:0] i_addr_b,
//     output reg [DATA_WIDTH-1:0] o_data_b
// );
//
//     reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH];
//     integer i;
//
//     always @(posedge i_clk) begin
//         if (i_ena) begin
//             for(i=0; i < (DATA_WIDTH/8); i=i+1) begin
//                 if(i_wea[i])
//                     ram[i_addr_a][i*8 +: 8] <= i_data_a[i*8 +: 8];
//             end
//         end
//     end
//
//     always @(posedge i_clk) begin
//         if (i_enb) o_data_b <= ram[i_addr_b];
//     end
//
// endmodule
//

