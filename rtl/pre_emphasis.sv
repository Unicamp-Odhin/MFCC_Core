`timescale 1ns/1ps

module pre_emphasis #(
    parameter WIDTH_IN = 16, // Largura do sample de áudio
    parameter WIDTH_OUT = 64,
    parameter F = 16, // Quantidade de Bits Fracionarios de ALPHA
    parameter ALPHA = $rtoi(0.97 * (1 << F))
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    output logic out_valid,

    input  logic signed [WIDTH_IN-1:0] x_in,   // Sinal de entrada (x[n])
    output logic signed [WIDTH_OUT-1:0] y_out   // Sinal de saída (y[n])
);
    localparam WIDTH_DIFF = WIDTH_OUT-WIDTH_IN;
    logic signed [WIDTH_OUT-1:0] x_prev;  // Resultado da multiplicação temporária (32 bits para evitar overflow)
    logic signed [WIDTH_OUT-1:0] x_in_extend;
    assign x_in_extend = {{WIDTH_DIFF{x_in[WIDTH_IN-1]}}, x_in} << F;

    always_ff @(posedge clk ) begin
        if (!rst_n) begin
            x_prev <= 'd0;
            y_out  <= 'd0;
        end else begin
            if(in_valid) begin
                x_prev    <= {{WIDTH_DIFF{x_in[WIDTH_IN-1]}},x_in} * ALPHA; // Multiplica x[n] por ALPHA
                y_out     <= x_in_extend - (x_prev);
                out_valid <= 1;
            end else begin
                out_valid <= 0;
            end
        end
    end


endmodule
