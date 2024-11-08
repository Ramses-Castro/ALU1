`default_nettype none

module Multiplexor2_1(
    input wire A,        // Entrada A
    input wire B,        // Entrada B
    input wire sel,      // Selector (0 o 1)
    output wire out      // Salida
);
    assign out = (sel) ? B : A; // Si sel es 1, salida es B, si sel es 0, salida es A
endmodule
