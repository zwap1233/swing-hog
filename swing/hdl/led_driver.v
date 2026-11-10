
`timescale 1 ns / 1 ps

module led_driver #(
    parameter integer F_CLK = 100000000,
    parameter C_ADDR_WIDTH = 8,
    parameter C_DATA_WIDTH = 32
)(
    input wire clk,
    input wire reset,
    input wire enable,

    input wire [C_DATA_WIDTH-1:0] DATA,
    output reg [C_ADDR_WIDTH-1:0] ADDR,
    output reg addr_valid,
    input wire addr_ready,

    output reg led_data
);

    localparam integer PC_H_ONE = 60;
    localparam integer PC_H_ZERO = 30;
    localparam integer PC = 120;
    localparam integer PC_RESET = 8000;

    reg [C_DATA_WIDTH-1:0] shift_register;

endmodule


