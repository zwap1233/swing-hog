
`timescale 1 ns / 1 ps

module ram_interconnect #(
    parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = 32  // Data Width in bits

) (
    input clk,
    input reset,

    input w_en,
    input [NUM_COL-1:0] w_we,
    input [ADDR_WIDTH-1:0] w_addr,
    input [DATA_WIDTH-1:0] w_data,

    input [ADDR_WIDTH-1:0] r_addr_a,
    output[DATA_WIDTH-1:0] r_data_a,
    input r_a_valid,
    output r_a_ready,

    input [ADDR_WIDTH-1:0] r_addr_b,
    output[DATA_WIDTH-1:0] r_data_b,
    input r_b_valid,
    output r_b_ready
    
);

//


endmodule

