`timescale 1ns/1ps

module pre_emphasis #(
    parameter N = 16, // Largura do sample de áudio
    parameter F = 15, // Quantidade de Bits Fracionarios de ALPHA
    parameter ALPHA = 16'd31785 // Alpha em Q1.15 (0.97 = 31785)
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    output logic out_valid,

    input  logic signed [N-1:0] x_in,   // Sinal de entrada (x[n])
    output logic signed [2*N-1:0] y_out   // Sinal de saída (y[n])
);

    logic signed [2*N-1:0] x_prev;  // Resultado da multiplicação temporária (32 bits para evitar overflow)
    logic signed [2*N-1:0] x_in_extend;
    assign x_in_extend = {{N{x_in[N-1]}}, x_in};

    always_ff @(posedge clk ) begin
        if (!rst_n) begin
            x_prev <= 'd0;
            y_out  <= 'd0;
        end else begin
            if(in_valid) begin
                x_prev    <= {{N{x_in[N-1]}},x_in} * ALPHA; // Multiplica x[n] por ALPHA
                y_out     <= x_in_extend - (x_prev >>> F);
                out_valid <= 1;
            end else begin
                out_valid <= 0;
            end
        end
    end


endmodule
