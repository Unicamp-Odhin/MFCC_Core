`timescale 1ns/1ps

module MFCC_Core #(
    parameter int NUM_COEFFICIENTS = 12,    // Número de coeficientes MFCC
    parameter int FRAME_SIZE       = 306,   // Tamanho do quadro de entrada
    parameter int FRAME_MOVE       = 123,   // Tamanho do movimento do quadro
    parameter int SAMPLE_RATE      = 12207, // Taxa de amostragem
    parameter int FFT_SIZE         = 512,   // Tamanho da FFT
    parameter int PCM_FIFO_DEPTH   = 256    // Profundidade do FIFO de PCM
) (
    input  logic clk,
    input  logic rst_n,

    // audio input
    input  logic [15:0] pcm_in,
    input  logic pcm_ready_i
);
    logic pre_emphasis_valid;
    logic [15:0] pre_emphasized_signal;

    logic fifo_empty, fifo_full, fifo_rd_en;
    logic [15:0] fifo_read_data;

    Pre_Emphasis u_pre_emphasis (
        .clk       (clk),
        .rst_n     (rst_n),

        .in_valid  (pcm_ready_i),
        .out_valid (pre_emphasis_valid),

        .x_in      (pcm_in), // Sinal de entrada
        .y_out     (pre_emphasized_signal) // Sinal de saída
    );

    FIFO #(
        .DEPTH        (PCM_FIFO_DEPTH),
        .WIDTH        (16)
    ) tx_fifo (
        .clk          (clk),
        .rst_n        (rst_n),

        .wr_en_i      (pre_emphasis_valid),
        .rd_en_i      (fifo_rd_en),

        .write_data_i (pre_emphasized_signal),
        .full_o       (fifo_full),
        .empty_o      (fifo_empty),
        .read_data_o  (fifo_read_data)
    );

    logic [15:0] window_buffer_data_o;
    logic window_valid_to_read;
    logic window_rd_en;
    logic start_move;
    logic start_hamming;

    Window_Buffer #(
        .WIDTH                (16)
    ) u_window_buffer (
        .clk                  (clk),                         // 1 bit
        .rst_n                (rst_n),                       // 1 bit

        .start_move           (start_move),                  // 1 bit

        .fifo_rd_en_o         (fifo_rd_en),                  // 1 bit
        .fifo_data_i          (fifo_read_data),              // 16 bits
        .fifo_empty_i         (fifo_empty),                  // 1 bit
        .fifo_full_i          (fifo_full),                   // 1 bit

        .rd_en_i              (window_rd_en),                // 10 bits
        .read_data_o          (window_buffer_data_o),        // 16 bits
        .valid_to_read_o      (window_valid_to_read),        // 1 bit

        .start_next_state_o   (start_hamming)
    );

    logic hamming_done, hamming_out_valid;
    logic [8:0] frame_ptr;
    logic signed [15:0] hamming_sample;
    logic signed [15:0] hamming_frame [0:305]

    Hamming_Window u_hamming_window (
        .clk             (clk),
        .rst_n           (rst_n),

        .start_i         (start_hamming),

        .valid_to_read_i (window_valid_to_read),
        .rd_en_o         (window_rd_en),

        .frame_ptr_o     (frame_ptr),
        .frame_sample_i  (window_buffer_data_o),  // Sinal de entrada
        .hamming_frame_o (hamming_sample),        // Sinal de saída

        .out_valid_o     (hamming_out_valid)
        .done_o          (hamming_done)
    );

    always_ff @( posedge clk ) begin
        if(hamming_out_valid) begin
            hamming_frame[frame_ptr] <= hamming_sample;
        end
    end

endmodule
