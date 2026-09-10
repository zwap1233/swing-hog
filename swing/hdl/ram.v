
`timescale 1 ns / 1 ps

module ram #(
    parameter integer ADDR_WIDTH = 8,
    parameter integer DATA_WIDTH = 32
) (
    input i_clk,
    input i_ena,
    input i_wea,
    input i_enb,

    input [ADDR_WIDTH-1:0] i_addr_a,
    input [DATA_WIDTH-1:0] i_data_a,

    input [ADDR_WIDTH-1:0] i_addr_b,
    output reg [DATA_WIDTH-1:0] o_data_b
);

    reg [DATA_WIDTH-1:0] ram[ADDR_WIDTH^2];

    always @(posedge i_clk) begin
        if (i_ena) begin
            if (i_wea) ram[i_addr_a] <= i_data_a;
        end
    end

    always @(posedge clk) begin
        if (i_enb) o_data_b <= ram[i_addr_b];
    end

endmodule
;

