`default_nettype none
`timescale 1ns / 1ps

module tb ();

  // Dump the signals to a VCD file. Puedes visualizarlo con GTKWave.
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    #1;
  end

  // Declaración de señales para pruebas
  reg mclk;
  reg [2:0] in1, in2;            // Entradas de 3 bits para ALU
  reg [1:0] op;                  // Código de operación de la ALU
  wire [3:0] select_disp;        // Selección de displays
  wire zero;                     // Señal de resultado cero
  wire error;                    // Señal de error (división por cero, etc.)
  wire AE, BE, CE, DE, EE, FE, GE;  // Salidas de segmentos para displays de 7 segmentos

  // Instanciamos el módulo a probar
  ALU_Displays #(.WIDTH(3)) user_project (
      .mclk(mclk),
      .select_disp(select_disp),
      .in1(in1),
      .in2(in2),
      .op(op),
      .zero(zero),
      .error(error),
      .AE(AE), .BE(BE), .CE(CE), .DE(DE), .EE(EE), .FE(FE), .GE(GE)
  );

  // Inicializamos el reloj y los valores de entrada para el test
  initial begin
    mclk = 0;
    in1 = 3'b000;
    in2 = 3'b000;
    op = 2'b00;
    
    // Ejemplo de señales de entrada para probar diferentes operaciones
    #10 in1 = 3'b011; in2 = 3'b001; op = 2'b00;  // Suma: 3 + 1
    #10 in1 = 3'b101; in2 = 3'b010; op = 2'b01;  // Resta: 5 - 2
    #10 in1 = 3'b010; in2 = 3'b010; op = 2'b10;  // Multiplicación: 2 * 2
    #10 in1 = 3'b100; in2 = 3'b010; op = 2'b11;  // División: 4 / 2
    #10 in1 = 3'b100; in2 = 3'b000; op = 2'b11;  // División por cero (error)
    
    // Fin de la simulación
    #50 $finish;
  end

  // Generación del reloj
  always #5 mclk = ~mclk;

endmodule

