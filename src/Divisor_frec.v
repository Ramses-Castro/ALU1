`default_nettype none

module Divisor_frec (
    input wire mclk,
    output wire q_int1,
    output wire q_int2
);

reg [23:0] q;

always @(posedge mclk) begin
    q <= q + 1;
end

assign q_int1 = q[17];
assign q_int2 = ~q_int1;

endmodule
