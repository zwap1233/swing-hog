
`timescale 1 ns / 1 ps

module skidbuffer #(
    parameter BUF_WIDTH = 32
)(
    input wire clk,
    input wire reset,

    input wire i_valid,
    output reg i_ready,
    input wire [BUF_WIDTH-1:0] din,
    output reg o_valid,
    input wire o_ready,
    output reg [BUF_WIDTH-1:0] dout
);

reg buf_valid;
reg [BUF_WIDTH-1:0] buffer;

// NOTE: pass din to dout and buffer if dout isnt ready.

// o_valid should be one if there is valid data in the buffer or on the din
// line. This should be registered to reduce slack in the output.
always @(posedge clk)
    if(reset)
        o_valid <= 0;
    else if(i_valid || buf_valid)
        o_valid <= 1;
    else
        o_valid <= 0;


// i_ready should be one if either the buffer isnt valid or if o_ready
always @(posedge clk)
    if(reset)
        i_ready <= 0;
    else if(o_ready || !buf_valid)
        i_ready <= 1;
    else
        i_ready <= 0;

always @(posedge clk)
    if(reset)
        buf_valid <= 0;
    else if(o_ready && buf_valid) begin
        dout <= buffer;
        buf_valid <= 0;
    end else if(o_ready && i_valid && ~buf_valid) begin
        dout <= din;
    end else if(!o_ready && i_valid) begin
        buffer <= din;
        buf_valid <= 1;
    end

endmodule


`ifdef FORMAL

    

`endif
