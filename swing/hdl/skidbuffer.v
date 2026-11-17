
`timescale 1 ns / 1 ps

module skidbuffer #(
    parameter BUF_WIDTH = 32
) (
    input wire clk,
    input wire reset,

    input wire i_valid,
    output wire i_ready,
    input wire [BUF_WIDTH-1:0] din,
    output wire o_valid,
    input wire o_ready,
    output wire [BUF_WIDTH-1:0] dout
);

    // NOTE: This a passthrough skidbuffer and it is not registered, it uses
    // combinatorial logic to pass anything on as long as on the posedge of
    // the clock the data is able to passthrough otherwise it switches to the
    // buffer

    reg buf_valid;
    reg [BUF_WIDTH-1:0] buffer;

    //if buf_valid set dout to the buffer if not than to din
    assign dout = buf_valid ? buffer : din;

    //o_valid should be high when either the input is valid or the buffer is
    //valid
    assign o_valid = buf_valid || i_valid;

    //the input is ready when the buffer isnt valid, at which point it either
    //transfers data to the output or the buffer
    assign i_ready = ~buf_valid;

    always @(posedge clk)
        if (reset) buf_valid <= 0;
        else if (i_valid && i_ready && ~o_ready) begin
            buf_valid <= 1;
            buffer <= din;
        end else if(o_ready && o_valid && buf_valid) buf_valid <= 0;

`ifdef FORMAL

    //generate reset pulse
    reg f_past_valid;

    initial f_past_valid = 0;
    always @(posedge clk) f_past_valid <= 1;

    always_comb if (!f_past_valid) assume (reset);

    // Incoming stream properties / assumptions
    always @(posedge clk)
        if (!f_past_valid) begin
            assume (!i_valid);
        end else if ($past(i_valid && !i_ready && !reset) && !reset)
            assume (i_valid && $stable(din));

    // Outgoing stream properties / assumptions
    always @(posedge clk)
        if (!f_past_valid) begin
            // Following any reset, valid must be deasserted, NOTE: this is
            // only for a registered skidbuffer
            //assert (!o_valid);
        end else if ($past(o_valid && !o_ready && !reset) && !reset)
            // Following any stall, valid must remain high and
            // data must be preserved
            assert (o_valid && $stable(
                dout
            ));

    // Other properties

    // Rule #1:
    //    If registered, then following any reset we should be
    //    ready for a new request
    always @(posedge clk) if (f_past_valid && $past(reset)) assert (i_ready);

    // Rule #2:
    //    All incoming data must either go directly to the
    //    output port, or into the skid buffer
    always @(posedge clk)
        if(f_past_valid && !$past(reset) && $past(i_valid && i_ready) && buf_valid)
            assert (buffer == $past(din));
        else if(f_past_valid && !$past(reset) && $past(i_valid && i_ready) && !buf_valid)
            assert ($past(dout) == $past(din));

    // Rule #3:
    //    After the last transaction, o_valid should become idle
    always @(posedge clk)
        if (f_past_valid && !$past(reset)) begin
            if ($past(i_valid && i_ready && !o_ready)) assert (o_valid);
        end

    // Rule #4
    //    Same thing, but this time for o_ready
    always @(posedge clk) if (f_past_valid && $past(!i_ready && o_ready)) assert (i_ready);

    always @(posedge clk) if (!reset && !i_ready) assert (o_valid);

    ////////////////////////////////////////////////////////////////////////
    //
    // Cover checks
    // {{{
    ////////////////////////////////////////////////////////////////////////
    //
    //
    reg f_changed_data;

    initial f_changed_data = 0;
    always @(posedge clk)
        if (reset) f_changed_data <= 1;
        else if (i_valid && $past(!i_valid || i_ready)) begin
            if (din != $past(din + 1)) f_changed_data <= 0;
        end else if (!i_valid && din != 0) f_changed_data <= 0;


    reg [3:0] cvr_steps, cvr_hold;

    always @(posedge clk)
        if (reset) begin
            cvr_steps <= 0;
            cvr_hold  <= 0;
        end else begin
            cvr_steps <= cvr_steps + 1;
            cvr_hold  <= cvr_hold + 1;
            case (cvr_steps)
                0: if (o_valid || i_valid) cvr_steps <= 0;
                1: if (!i_valid || !o_ready) cvr_steps <= 0;
                2: if (!i_valid || !o_ready) cvr_steps <= 0;
                3: if (!i_valid || !o_ready) cvr_steps <= 0;
                4: if (!i_valid || o_ready) cvr_steps <= 0;
                5: if (!i_valid || !o_ready) cvr_steps <= 0;
                6: if (!i_valid || !o_ready) cvr_steps <= 0;
                7: if (!i_valid || o_ready) cvr_steps <= 0;
                8: if (!i_valid || o_ready) cvr_steps <= 0;
                9: if (!i_valid || !o_ready) cvr_steps <= 0;
                10: if (!i_valid || !o_ready) cvr_steps <= 0;
                11: if (!i_valid || !o_ready) cvr_steps <= 0;
                12: begin
                    cvr_steps <= cvr_steps;
                    cover (!o_valid && !i_valid && f_changed_data);
                    if (!o_valid || !o_ready) cvr_steps <= 0;
                    else cvr_hold <= cvr_hold + 1;
                end
                default: assert (0);
            endcase
        end


`endif

endmodule
