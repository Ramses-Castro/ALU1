`default_nettype none

// Módulo ALU
module ALU #(
  parameter WIDTH = 3
)(
  input wire [WIDTH-1:0] in1, in2,       // Entradas A y B de la ALU (in1 e in2)
  input wire [1:0] op,                   // Código de operación
  output reg [3:0] dec_bin,              // Decenas del resultado
  output reg [3:0] unis_bin,             // Unidades del resultado
  output reg zero,                       // Señal de resultado cero (flag zero)
  output reg error                       // Señal de error (flag error división por cero o datos inválidos)
);

reg [5:0] out;                           // Variable para almacenar el resultado de la operación en decimal
reg [3:0] decenas_dec, unidades_dec;     // Variables para separar las unidades y decenas en decimal

// Definición de operaciones para el selector
localparam SUM = 2'b00;
localparam SUB = 2'b01;
localparam MUL = 2'b10;
localparam DIV = 2'b11;

always @(*) begin
  error = 0;
  zero = 0;
  
  case (op)
    SUM: begin
      out = in1 + in2;
      decenas_dec = out / 10;
      unidades_dec = out % 10;
      dec_bin = decenas_dec;
      unis_bin = unidades_dec;
    end
    SUB: begin
      if (in1 >= in2) begin
        out = in1 - in2;
        decenas_dec = out / 10;
        unidades_dec = out % 10;
        dec_bin = decenas_dec;
        unis_bin = unidades_dec;
      end else begin
        error = 1;
        out = 6'b000000;
        dec_bin = 4'b0000;
        unis_bin = 4'b0000;
      end
    end
    MUL: begin
      out = in1 * in2;
      decenas_dec = out / 10;
      unidades_dec = out % 10;
      dec_bin = decenas_dec;
      unis_bin = unidades_dec;
    end
    DIV: begin
      if (in2 == 0) begin
        error = 1;
        out = 6'b111111;
        dec_bin = 4'b1111;
        unis_bin = 4'b1111;
      end else begin
        out = in1 / in2;
        decenas_dec = out / 10;
        unidades_dec = out % 10;
        dec_bin = decenas_dec;
        unis_bin = unidades_dec;
      end
    end
    default: begin
      error = 1;
      out = 6'b111111;
      dec_bin = 4'b1111;
      unis_bin = 4'b1111;
    end
  endcase

  if (out == 0) zero = 1;
end

endmodule

// Módulo tt_um_example (Ejemplo simple)
module tt_um_example (
    input wire clk,              // Reloj de entrada
    input wire reset,            // Reset (activo alto)
    input wire ena,              // Puerto habilitador
    input wire [3:0] in_data,    // Datos de entrada
    output reg [3:0] out_data    // Datos de salida
);

    // Ejemplo de lógica del módulo tt_um_example
    always @(posedge clk or posedge reset) begin
        if (reset)
            out_data <= 4'b0000;  // Resetear salida a 0000 cuando el reset sea activo
        else if (ena)             // Propagar solo cuando 'ena' esté activo
            out_data <= in_data; // Propagar entrada a salida
    end
endmodule
