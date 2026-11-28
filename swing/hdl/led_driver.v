
`timescale 1 ns / 1 ps

module led_driver #(
    parameter MEM_SIZE = 3*15,

    parameter C_ADDR_WIDTH = 8,
    parameter C_DATA_WIDTH = 32,

    parameter LED_WIDTH = 50,
    parameter LED_HEIGHT = 15
) (
    input wire clk,
    input wire resetn,
    input wire enable,

    input wire [C_DATA_WIDTH-1:0] data,
    output reg [C_ADDR_WIDTH-1:0] addr,
    output reg addr_valid,

    output wire led_data
);
    localparam SHIFT_REGISTER_SIZE = 8 * 3;

    localparam integer PC_H_ONE = 60;
    localparam integer PC_H_ZERO = 30;
    localparam integer PC = 120-1; //-1 to adjust for the fact that the registers make it such that it takes a clock cycle to latch
    localparam integer PC_RESET = 8000;

    reg [SHIFT_REGISTER_SIZE-1:0] shift_reg;
    reg [SHIFT_REGISTER_SIZE-1:0] latch_reg;

    reg data_valid;

    reg [6:0] i;

    //================ SHIFT register =================

    always @(posedge clk)
        if (!resetn) i <= 0;
        else if (i >= PC) i <= 0;
        else if (enable) i <= i + 1;
        else i <= i;

    always @(posedge clk)
        if (!resetn) shift_reg <= 0;
        else if (i >= PC) shift_reg <= latch_reg;
        else shift_reg <= shift_reg >> 1;

    always @(*) begin
        if (enable) begin
            if (shift_reg[0]) begin
                if (i <= PC_H_ONE) led_data = 1;
                else led_data = 0;
            end else begin
                if (i <= PC_H_ZERO) led_data = 1;
                else led_data = 0;
            end
        end else led_data = 0;
    end

    //=============== LOAD DATA =================

    initial begin
        addr = 0;
        data_valid = 0;
        addr_valid = 0;
    end

    always @(posedge clk)
        if (!resetn) addr = 0;
        else if(addr >= LED_WIDTH*LED_HEIGHT) begin
            addr <= 0;
        end
        else if(data_valid) addr <= addr + 1;

    always @(posedge clk)
        if (!resetn) begin
            addr_valid <= 0;
            data_valid <= 0;
        end else if (i == 0) addr_valid <= 1;
        else if (addr_valid) begin
            data_valid <= 1;
            addr_valid <= 0;
        end else if (data_valid) data_valid <= 0;

    always @(posedge clk)
        if (!resetn) latch_reg <= 0;
        else if (data_valid) latch_reg <= data;

`ifdef FORMAL
    reg f_past_valid;

    initial f_past_valid = 0;
    always @(posedge clk) f_past_valid <= 1;

    //start with a reset
    always @(posedge clk) if (!f_past_valid) assume (!resetn);

    //check that the output is low during reset or when disabled
    always @(*) if (!enable || !resetn) assert (!led_data);

`endif

endmodule


