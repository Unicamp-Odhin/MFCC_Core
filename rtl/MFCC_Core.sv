`timescale 1ns/1ps

module MFCC_Core #(
    parameter WIDTH_MIC     = 16,       // Largura do sample de áudio
    parameter WIDTH = 64,
    parameter WIDTH_OUT = 32,
    parameter F_WIDTH = 16,
    parameter ALPHA = $rtoi(0.97 * (1 << F_WIDTH)),
    parameter NUM_CEPS = 12,       // Número de coeficientes MFCC
    parameter NUM_MEL_FILTERS      = 40,       // Número de filtros Mel
    parameter FRAME_SIZE = 400,
    parameter FRAME_STEP = 160,
    parameter FFT_SIZE         = 512,      // Tamanho da FFT
    parameter NFFT_LOG2 = $clog2(FFT_SIZE),
    parameter PCM_FIFO_DEPTH   = 256      // Profundidade do FIFO de PCM
) (
    input  logic clk,
    input  logic rst_n,

    // audio input
    input  logic [WIDTH_MIC - 1:0] pcm_in,
    input  logic pcm_ready_i,
    
    // control input
    input  logic start_i,
    input  logic auto_restart_i,

    output logic mfcc_done_o,
    output logic [WIDTH_OUT-1:0] mfcc_data_o [0:NUM_CEPS - 1]

);
    localparam RFFT_SIZE  = FFT_SIZE/2;


    logic pre_emphasis_valid;
    logic [WIDTH-1:0] pre_emphasized_signal;

    logic fifo_empty, fifo_rd_en, fifo_full;
    logic [WIDTH - 1:0] fifo_read_data;

    pre_emphasis #(
        .WIDTH_IN (WIDTH_MIC),
        .WIDTH_OUT (WIDTH),
        .F (F_WIDTH),
        .ALPHA (ALPHA) 
    ) u_pre_emphasis (
        .clk          (clk),
        .rst_n        (rst_n),

        .in_valid     (pcm_ready_i),
        .out_valid    (pre_emphasis_valid),

        .x_in         (pcm_in), // Sinal de entrada
        .y_out        (pre_emphasized_signal) // Sinal de saída
    );

    fifo #(
        .DEPTH        (PCM_FIFO_DEPTH),
        .WIDTH        (WIDTH)
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

    logic [WIDTH - 1:0] window_buffer_data_o;
    logic window_valid_to_read;
    logic window_rd_en;
    logic start_move;
    logic start_hamming;

    window_buffer #(
        .WIDTH                (WIDTH),
        .FRAME_SIZE           (FRAME_SIZE),
        .FRAME_STEP            (FRAME_STEP)
    ) u_window_buffer (
        .clk                  (clk),
        .rst_n                (rst_n),

        .start_move           (start_move),

        .fifo_rd_en_o         (fifo_rd_en),
        .fifo_data_i          (fifo_read_data),
        .fifo_empty_i         (fifo_empty),

        .rd_en_i              (window_rd_en),
        .read_data_o          (window_buffer_data_o),
        .valid_to_read_o      (window_valid_to_read),

        .start_next_state_o   (start_hamming),
        .idle_o               (idle)
    );

    logic hamming_done, hamming_out_valid;
    logic [8:0] frame_ptr;
    logic signed [WIDTH - 1:0] hamming_sample;

    hamming_window #(
        .N(WIDTH),
        .F (F_WIDTH),
        .NUM_COEFFICIENTS (FRAME_SIZE),
        .NFFT_SIZE        (FFT_SIZE)
    ) u_hamming_window (
        .clk              (clk),
        .rst_n            (rst_n),

        .start_i          (start_hamming),

        .valid_to_read_i  (window_valid_to_read),
        .rd_en_o          (window_rd_en),

        .frame_ptr_o      (frame_ptr),
        .frame_sample_i   (window_buffer_data_o),
        .hamming_sample_o (hamming_sample),

        .out_valid_o      (hamming_out_valid),
        .done_o           (hamming_done)
    );

    logic [NFFT_LOG2-1:0] fft_ptr;
    logic [WIDTH-1:0] fft_power_sample;
    logic fft_power_valid, fft_done;

    fft_radix2 #(
        .NFFT (FFT_SIZE),
        .WIDTH (WIDTH),
        .F(F_WIDTH),
        .NFFT_LOG2 (NFFT_LOG2)
    ) u_fft (
        .clk            (clk),
        .rst_n          (rst_n),

        .in_valid       (hamming_out_valid),
        .frame_ptr_i    (frame_ptr),
        .frame_sample_i        (hamming_sample),

        .start_i        (hamming_done),

        .power_ptr_o    (fft_ptr),
        .power_valid_o  (fft_power_valid),
        .power_sample_o (fft_power_sample),

        .fft_done_o     (fft_done)
    );

    logic mel_done, mel_valid;
    logic [5:0] mel_ptr;
    logic [WIDTH-1:0] mel_sample;

    mel #(
		.NUM_MEL_FILTERS (NUM_MEL_FILTERS), 
		.NUM_RFFT_BINS       (RFFT_SIZE),
        .F(F_WIDTH)
    ) u_mel (
        .clk                        (clk),
        .rst_n                      (rst_n),

        .mel_start_i                (fft_done),

        .in_valid                   (fft_power_valid),
        .power_spectrum_frame_ptr   (fft_ptr),
        .power_spectrum_frame_in    (fft_power_sample),

        .mel_done_o                 (mel_done),

        .mel_value_energies         (mel_sample),
        .mel_prt_energies           (mel_ptr),
        .mel_valid                  (mel_valid)
    );

    logic [$clog2(NUM_CEPS) - 1:0] ceps_ptr;
    logic [WIDTH_OUT-1:0] ceps_sample;
    logic dct_valid, dct_done;
    logic [WIDTH_OUT-1:0] coeficientes [0: NUM_CEPS - 1];

    dct #(
        .NUM_CEPS    (NUM_CEPS),
        .NUM_MEL_FILTERS (NUM_MEL_FILTERS),
        .ENERGIES_WIDTH (WIDTH_OUT),
        .CEPS_WIDTH  (WIDTH_OUT)
    ) u_dct (
        .clk         (clk),
        .rst_n       (rst_n),

        .in_valid    (mel_valid),
        .frame_ptr_i (mel_ptr),
        .energy_in    (mel_sample),
        
        .start_i     (mel_done),

        .dct_done_o  (dct_done),

        .dct_valid_o (dct_valid),
        .ceps_out    (ceps_sample),
        .ceps_ptr_o  (ceps_ptr)
    );

    always_ff @( posedge clk ) begin
        if (dct_valid) begin
            coeficientes[ceps_ptr] <= ceps_sample;
        end
    end

    logic hamming_finished;
    logic idle;
    logic start_move_auto;

    always_ff @( posedge clk ) begin : RESTARTIG_LOGIC
        start_move  <= start_i || (auto_restart_i && start_move_auto);
        
        if (!rst_n) begin
            start_move_auto  <= 0;
            hamming_finished <= 0;
        end else begin
            if(hamming_done) begin
                hamming_finished <= 1;
            end
            start_move_auto <= hamming_finished && idle;
            if(hamming_finished && idle) begin
                hamming_finished <= 0;
            end
        end
    end

    //assign start_move  = start_i || (auto_restart_i && start_move_auto);
    assign mfcc_done_o = dct_done;
    assign mfcc_data_o = coeficientes;

endmodule
