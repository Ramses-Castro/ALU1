/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module ALU_Displays (
    input  wire [2:0] ui_in,  //in1
    output wire [3:0] uo_out, // select disp
    input  wire [2:0] uio_in, // in2
    output wire [6:0] uio_out,  // segmentos (AE-GE)
  //  output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena, //error     // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // Señales internas
    wire [3:0] num1mux;
    wire [3:0] num2mux;
    wire zerow;
    wire errorw;
    wire [3:0] select_disp;

    // Instancia del módulo ALU con ancho ajustado a WIDTH = 3
    ALU #(.WIDTH(3)) Etapa0 (
        .in1(uio_in[2:0]),      // Entrada A
        .in2(uio_in[5:3]),      // Entrada B
        .op(ui_in[1:0]),        // Código de operación
        .dec_bin(num1mux),      // Salida decenas
        .unis_bin(num2mux),     // Salida unidades
        .zero(zerow),           // Señal de resultado cero
        .error(errorw)          // Señal de error
    );

    // Divisor de frecuencia
    Divisor_frec Etapa2 (
        .mclk(clk),
        .q_int1(select_disp[0]),
        .q_int2(select_disp[1])
    );

    // Módulo de multiplexor BCD
    Multiplex_decoBCD Etapa1 (
        .A(uo_out[0]),
        .B(uo_out[1]),
        .C(uo_out[2]),
        .D(uo_out[3]),
        .E(uo_out[4]),
        .F(uo_out[5]),
        .G(uo_out[6]),
        .J(num1mux),
        .K(num2mux),
        .SEL(select_disp[1])
    );

    // Asignaciones de control
    assign select_disp[2] = 1;
    assign select_disp[3] = 1;
    assign uo_out[7] = zerow;   // Señal zero en uo_out[7]
    assign uio_out[7] = errorw; // Señal error en uio_out[7]
    assign uio_oe = 8'b11111111; // Configura uio_out como salida

endmodule
