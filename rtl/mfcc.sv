`timescale 1ns/1ps

module MFCC_Core #(
    parameter SAMPLE_WIDTH     = 16,       // Largura do sample de áudio
    parameter NUM_COEFFICIENTS = 12,       // Número de coeficientes MFCC
    parameter NUM_FILTERS      = 40,       // Número de filtros Mel
    parameter FRAME_SIZE       = 400,      // Tamanho do quadro de entrada
    parameter FRAME_MOVE       = 160,      // Tamanho do movimento do quadro
    parameter SAMPLE_RATE      = 12207,    // Taxa de amostragem
    parameter FFT_SIZE         = 512,      // Tamanho da FFT
    parameter PCM_FIFO_DEPTH   = 256,      // Profundidade do FIFO de PCM
    parameter ALPHA            = 16'd31785 // Alpha em Q1.15 (0.97 ≈ 31785)
) (
    input  logic clk,
    input  logic rst_n,

    // audio input
    input  logic [SAMPLE_WIDTH - 1:0] pcm_in,
    input  logic pcm_ready_i
);
    localparam RFFT_SIZE = FFT_SIZE/2;

    logic pre_emphasis_valid;
    logic [SAMPLE_WIDTH - 1:0] pre_emphasized_signal;

    logic fifo_empty, fifo_full, fifo_rd_en;
    logic [SAMPLE_WIDTH - 1:0] fifo_read_data;

    pre_emphasis #(
        .SAMPLE_WIDTH (SAMPLE_WIDTH),
        .ALPHA        (ALPHA) // Alpha em Q1.15 (0.97 ≈ 31785)
    ) u_pre_emphasis (
        .clk          (clk),
        .rst_n        (rst_n),

        .in_valid     (pcm_ready_i),
        .out_valid    (pre_emphasis_valid),

        .x_in         (pcm_in), // Sinal de entrada
        .y_out        (pre_emphasized_signal) // Sinal de saída
    );

    FIFO #(
        .DEPTH        (PCM_FIFO_DEPTH),
        .WIDTH        (SAMPLE_WIDTH)
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

    logic [SAMPLE_WIDTH - 1:0] window_buffer_data_o;
    logic window_valid_to_read;
    logic window_rd_en;
    logic start_move;
    logic start_hamming;

    window_buffer #(
        .WIDTH                (SAMPLE_WIDTH),
        .FRAME_SIZE           (FRAME_SIZE),
        .MOVE_SIZE            (FRAME_MOVE)
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
    logic signed [SAMPLE_WIDTH - 1:0] hamming_sample;
    logic signed [SAMPLE_WIDTH - 1:0] hamming_frame [0:FFT_SIZE - 1];

    Hamming_Window #(
        .SAMPLE_WIDTH     (SAMPLE_WIDTH),
        .NUM_COEFFICIENTS (FRAME_SIZE),
        .NFFT_SIZE        (FFT_SIZE)
    ) u_hamming_window (
        .clk              (clk),
        .rst_n            (rst_n),

        .start_i          (start_hamming),

        .valid_to_read_i  (window_valid_to_read),
        .rd_en_o          (window_rd_en),

        .frame_ptr_o      (frame_ptr),
        .frame_sample_i   (window_buffer_data_o),  // Sinal de entrada
        .hamming_sample_o (hamming_sample),        // Sinal de saída

        .out_valid_o      (hamming_out_valid),
        .done_o           (hamming_done)
    );

    always_ff @( posedge clk ) begin
        if(hamming_out_valid) begin
            hamming_frame[frame_ptr] <= hamming_sample;
        end
    end

    logic [8:0] fft_ptr;
    logic [31:0] fft_power_sample;
    logic fft_power_valid, fft_done;

    FFT #(
        .NFFT           (FFT_SIZE),
        .INPUT_WIDTH    (SAMPLE_WIDTH),
        .COMPLEX_WIDTH  (32),
        .FRAME_SIZE     (FRAME_SIZE)
    ) u_fft (
        .clk            (clk),
        .rst_n          (rst_n),

        .in_valid       (hamming_out_valid),
        .frame_ptr_i    (frame_ptr),
        .real_in        (hamming_sample),

        .start_i        (hamming_done),

        .power_ptr_o    (fft_ptr),
        .power_valid_o  (fft_power_valid),
        .power_sample_o (fft_power_sample),

        .fft_done_o     (fft_done)
    );

    logic [31:0] rfft_power_buffer [0: RFFT_SIZE];

    always_ff @( posedge clk ) begin
        if(fft_power_valid) begin
            rfft_power_buffer[fft_ptr] <= fft_power_sample;
        end
    end   

    MEL #(
        .NUM_FILTERS (NUM_FILTERS)
    ) u_mel (
        .clk   (clk),
        .rst_n (rst_n)
    );

    DCT #(
        .NUM_CEPS (NUM_COEFFICIENTS)
    ) u_dct (
        .clk   (clk),
        .rst_n (rst_n)
    );

endmodule
