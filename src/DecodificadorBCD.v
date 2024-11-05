`default_nettype none

module DecodificadorBCD (
    output reg A, B, C, D, E, F, G,
    input wire W, X, Y, Z
);

wire [3:0] data_in;
assign data_in = {W, X, Y, Z};

always @(*) begin
    {A, B, C, D, E, F, G} = 7'b1111111;
    case (data_in)
        4'b0000: {A, B, C, D, E, F, G} = 7'b0000001;
        4'b0001: {A, B, C, D, E, F, G} = 7'b1001111;
        4'b0010: {A, B, C, D, E, F, G} = 7'b0010010;
        4'b0011: {A, B, C, D, E, F, G} = 7'b0000110;
        4'b0100: {A, B, C, D, E, F, G} = 7'b1001100;
        4'b0101: {A, B, C, D, E, F, G} = 7'b0100100;
        4'b0110: {A, B, C, D, E, F, G} = 7'b0100000;
        4'b0111: {A, B, C, D, E, F, G} = 7'b0001111;
        4'b1000: {A, B, C, D, E, F, G} = 7'b0000000;
        4'b1001: {A, B, C, D, E, F, G} = 7'b0000100;
    endcase
end

endmodule
