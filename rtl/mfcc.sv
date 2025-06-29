module MFCC_Core #(
    parameter int NUM_COEFFICIENTS = 13,    // Número de coeficientes MFCC
    parameter int FRAME_SIZE       = 256,   // Tamanho do quadro de entrada
    parameter int SAMPLE_RATE      = 12207, // Taxa de amostragem
    parameter int FFT_SIZE         = 512    // Tamanho da FFT
) (
    input  logic clk,
    input  logic rst_n,
);


endmodule
