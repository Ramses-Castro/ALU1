`default_nettype none
`timescale 1ns / 1ps


module tb;

    // Parámetros
    parameter WIDTH = 3;
    
    // Señales de prueba
    reg [WIDTH-1:0] in1, in2;
    reg [1:0] op;
    wire [3:0] dec_bin;
    wire [3:0] unis_bin;
    wire zero;
    wire error;
    
    // Instanciación del módulo ALU
    ALU #(
        .WIDTH(WIDTH)
    ) uut (
        .in1(in1),
        .in2(in2),
        .op(op),
        .dec_bin(dec_bin),
        .unis_bin(unis_bin),
        .zero(zero),
        .error(error)
    );
    
    // Bloques de inicialización
    initial begin
        // Inicialización de señales
        in1 = 0;
        in2 = 0;
        op = 2'b00; // Operación de suma (SUM)
        
        // Espera un poco antes de cambiar las señales
        #10;
        
        // Cambiar las entradas para probar el módulo
        in1 = 3;
        in2 = 2;
        op = 2'b00; // SUM
        #10;
        
        in1 = 5;
        in2 = 3;
        op = 2'b01; // Resta (SUB)
        #10;
        
        in1 = 4;
        in2 = 2;
        op = 2'b10; // Multiplicación (MUL)
        #10;
        
        in1 = 6;
        in2 = 2;
        op = 2'b11; // División (DIV)
        #10;
        
        in2 = 0; // Probar error de división por cero
        op = 2'b11;
        #10;
        
        $finish; // Termina la simulación
    end
    
    // Mostrar las señales de salida
    initial begin
        $monitor("in1 = %d, in2 = %d, op = %b, dec_bin = %d, unis_bin = %d, zero = %b, error = %b", 
                 in1, in2, op, dec_bin, unis_bin, zero, error);
    end

endmodule

