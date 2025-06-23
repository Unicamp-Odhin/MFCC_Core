module pre_emphasis (
    input  logic clk,
    input  logic rst_n,
    input  logic signed [15:0] x_in,   // Sinal de entrada (x[n])
    output logic signed [15:0] y_out   // Sinal de saída (y[n])
);

    parameter signed [15:0] ALPHA = 16'd31785;  // Alpha em Q1.15 (0.97 ≈ 31785)

    logic signed [15:0] x_prev;  // Armazena x[n-1]
    logic signed [31:0] mult_result;  // Resultado da multiplicação temporária (32 bits para evitar overflow)

    always_ff @(posedge clk or negedge rst) begin
        if (!rst_n) begin
            x_prev <= 16'd0;
            y_out  <= 16'd0;
        end else begin
            // Multiplicação: alpha * x[n-1]
            mult_result <= x_prev * ALPHA;

            // Ajuste de escala: Desloca 15 bits para a direita (divisão por 2^15 para manter Q1.15)
            y_out <= x_in - (mult_result >>> 15);

            // Atualiza x[n-1] para a próxima amostra
            x_prev <= x_in;
        end
    end

endmodule
