`timescale 1ns/1ps

module pre_emphasis #(
    parameter SAMPLE_WIDTH = 16,        // Largura do sample de áudio
    parameter ALPHA        = 16'd31785  // Alpha em Q1.15 (0.97 ≈ 31785)
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    output logic out_valid,

    input  logic [SAMPLE_WIDTH - 1:0] x_in,   // Sinal de entrada (x[n])
    output logic [SAMPLE_WIDTH - 1:0] y_out   // Sinal de saída (y[n])
);

    logic signed [2 * SAMPLE_WIDTH - 1:0] x_prev;  // Resultado da multiplicação temporária (32 bits para evitar overflow)

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_prev <= 'd0;
            y_out  <= 'd0;
        end else begin
            if(in_valid) begin
                x_prev    <= {{SAMPLE_WIDTH{x_in[15]}},x_in} * ALPHA; // Multiplica x[n] por ALPHA
                y_out     <= x_in - x_prev[2 * SAMPLE_WIDTH - 2: SAMPLE_WIDTH - 1]; // Desloca para a direita para manter Q1.15
                out_valid <= 1;
            end else begin
                out_valid <= 0;
            end
        end
    end

endmodule
