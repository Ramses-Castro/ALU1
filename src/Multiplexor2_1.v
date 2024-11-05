`default_nettype none

module Multiplexor2_1 (
    input wire [3:0] J,     // Entrada J de 4 bits
    input wire [3:0] K,     // Entrada K de 4 bits
    input wire EL,          // Señal de control (selector)
    output wire [3:0] SA    // Salida de 4 bits
);

assign SA = (EL == 1'b0) ? J : K;  // Selección de la salida con base en EL

endmodule
