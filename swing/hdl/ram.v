
`timescale 1 ns / 1 ps

module ram #(
    parameter integer ADDR_WIDTH = 8,
    parameter integer DATA_WIDTH = 32
) (
    input i_clk,
    input i_ena,
    input [(DATA_WIDTH/8)-1:0] i_wea,
    input [ADDR_WIDTH-1:0] i_addr_a,
    input [DATA_WIDTH-1:0] i_data_a,

    input i_enb,
    input [ADDR_WIDTH-1:0] i_addr_b,
    output reg [DATA_WIDTH-1:0] o_data_b
);

    reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH];
    integer i;

    always @(posedge i_clk) begin
        if (i_ena) begin
            for(i=0; i < (DATA_WIDTH/8); i=i+1) begin
                if(i_wea[i])
                    ram[i_addr_a][i*8 +: 8] <= i_data_a[i*8 +: 8];
            end
        end
    end

    always @(posedge i_clk) begin
        if (i_enb) o_data_b <= ram[i_addr_b];
    end

endmodule


