
`timescale 1 ns / 1 ps

module ram #(
    parameter integer ADDR_WIDTH = 8,
    parameter integer DATA_WIDTH = 32
) (
    input clk,
    input en,
    input we,

    input [ADDR_WIDTH-1:0] addr,
    input [DATA_WIDTH-1:0] data_in,
    output reg [DATA_WIDTH-1:0] data_out
);

    reg [DATA_WIDTH-1:0] ram[ADDR_WIDTH^2];

    always @(posedge clk) begin
        if (en) begin
            if (we) ram[addr] <= data_in;
            else data_out <= ram[addr];
        end
    end

endmodule
;

