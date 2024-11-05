`default_nettype none

module Multiplex_decoBCD (
    output wire A, B, C, D, E, F, G,
    input wire [3:0] J, K,
    input wire SEL
);

wire [3:0] SAW;

Multiplexor2_1 Etapa0 (
    .J(J),
    .K(K),
    .EL(SEL),
    .SA(SAW)
);

DecodificadorBCD Etapa1 (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .W(SAW[3]),
    .X(SAW[2]),
    .Y(SAW[1]),
    .Z(SAW[0])
);

endmodule
