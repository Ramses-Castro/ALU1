module tb;

    reg clk;
    reg reset;
    reg ena;  // Señal de habilitación
    reg [3:0] in_data;
    reg [7:0] ui_in;  // Cambié 'ui_in' a un vector de 8 bits
    wire [3:0] out_data;

    // Instanciación del módulo tt_um_example
    tt_um_example (
        .clk(clk),
        .reset(reset),
        .ena(ena),        // Conectar 'ena'
        .in_data(in_data),
        .ui_in(ui_in),    // Conectar 'ui_in' aquí como un vector de 8 bits
        .out_data(out_data)
    );

    // Generación de señales de reloj
    always #5 clk = ~clk;

    initial begin
        // Inicialización de señales
        clk = 0;
        reset = 0;
        ena = 0;  // Deshabilitado por defecto
        in_data = 4'b1010;
        ui_in = 8'b00000001; // Inicialización de 'ui_in' como un vector de 8 bits

        // Aplicar reset
        reset = 1;
        #10 reset = 0;

        // Habilitar 'ena' y verificar la salida
        ena = 1;
        #10 ena = 0;
        #10 ena = 1;

        // Continuar con las simulaciones
        #10 $finish;
    end

    initial begin
        $monitor("Time: %0t | ena: %b | in_data: %b | ui_in: %b | out_data: %b", $time, ena, in_data, ui_in, out_data);
    end

endmodule
