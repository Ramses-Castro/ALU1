`default_nettype none

module ALU_Displays #(
    parameter WIDTH = 3
)(
    input wire mclk,
    output wire [3:0] select_disp,
    input wire [WIDTH-1:0] in1, in2,
    input wire [1:0] op,
    output wire zero,
    output wire error,
    output wire AE, BE, CE, DE, EE, FE, GE
);

wire [3:0] num1mux;
wire [3:0] num2mux;
wire zerow;
wire errorw;

ALU #(.WIDTH(3)) Etapa0 (
    .in1(in1), 
    .in2(in2), 
    .op(op), 
    .dec_bin(num1mux), 
    .unis_bin(num2mux), 
    .zero(zerow), 
    .error(errorw)
);

Divisor_frec Etapa2 (
    .mclk(mclk),
    .q_int1(select_disp[0]),
    .q_int2(select_disp[1])
);

Multiplex_decoBCD Etapa1 (
    .A(AE),
    .B(BE),
    .C(CE),
    .D(DE),
    .E(EE),
    .F(FE),
    .G(GE),
    .J(num1mux),
    .K(num2mux),
    .SEL(select_disp[1])
);

assign select_disp[2] = 1'b1;
assign select_disp[3] = 1'b1;
assign zero = zerow;
assign error = errorw;

endmodule
