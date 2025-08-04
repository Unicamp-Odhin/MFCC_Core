`timescale 1ns/1ps
module dct_tb ();

    localparam AUDIO_PATH       = "data/seno_440Hz.hex";
    localparam MAX_AUDIO_SIZE   = 1600;
    localparam SAMPLE_WIDTH     = 16;
    localparam PCM_FIFO_DEPTH   = 256;
    localparam FRAME_SIZE       = 400;
    localparam FRAME_MOVE       = 160;
    localparam ALPHA            = 16'd31785;
    localparam FFT_SIZE         = 512;
    localparam NUM_FILTERS      = 40;
    localparam NUM_COEFFICIENTS = 12;

    logic clk;
    logic rst_n;

    logic [SAMPLE_WIDTH - 1:0] samples [0:MAX_AUDIO_SIZE - 1];

    logic [15:0] pcm_in;
    logic pcm_ready_i;
    logic pre_emphasis_valid;
    logic [15:0] pre_emphasized_signal;

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

    logic fifo_empty, fifo_full, fifo_rd_en;
    logic [SAMPLE_WIDTH - 1:0] fifo_read_data;

    fifo #(
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

    logic [SAMPLE_WIDTH - 1:0] window_buffer_data;
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

        .rd_en_i              (window_rd_en),                // 10 bits
        .read_data_o          (window_buffer_data),          // 16 bits
        .valid_to_read_o      (window_valid_to_read),        // 1 bit

        .start_next_state_o   (start_hamming)
    );

    logic hamming_done, hamming_out_valid;
    logic [8:0] frame_ptr;
    logic signed [SAMPLE_WIDTH - 1:0] hamming_sample;
    logic signed [SAMPLE_WIDTH - 1:0] hamming_frame [0:FFT_SIZE - 1];

    hamming_window #(
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
        .frame_sample_i   (window_buffer_data),  // Sinal de entrada
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

    fft_radix2 #(
        .NFFT           (FFT_SIZE),
        .INPUT_WIDTH    (SAMPLE_WIDTH),
        .COMPLEX_WIDTH  (32)
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

    logic mel_done, mel_valid;
    logic [5:0] mel_ptr;
    logic [7:0] mel_sample;
    logic [7:0] mel_energies [0:NUM_FILTERS - 1];

    mel #(
        .NUM_FILTERS                (NUM_FILTERS), 
        .NFFT                       (FFT_SIZE),
        .INPUT_WIDTH                (32),
        .OUTPUT_WIDTH               (8)
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

    always_ff @( posedge clk ) begin
        if(mel_valid) begin
            mel_energies[mel_ptr] <= mel_sample;
        end
    end

    logic [$clog2(NUM_COEFFICIENTS) - 1:0] ceps_ptr;
    logic [15:0] ceps_sample;
    logic dct_valid, dct_done;
    logic [15:0] coeficientes [0: NUM_COEFFICIENTS - 1];

    dct #(
        .NUM_CEPS    (NUM_COEFFICIENTS),
        .NUM_FILTERS (NUM_FILTERS),
        .INPUT_WIDTH (8),
        .CEPS_WIDTH  (16)
    ) u_dct (
        .clk         (clk),
        .rst_n       (rst_n),

        .in_valid    (mel_valid),
        .frame_ptr_i (mel_ptr),
        .power_in    (mel_sample),
        
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

    task dump_buffer_to_hex;
        integer fd;
        integer i;
        begin
            fd = $fopen("buffer_dump.hex", "w");
            for (i = 0; i < FRAME_SIZE; i = i + 1) begin
                $fwrite(fd, "%h\n", u_window_buffer.buffer[i]);
            end
            $fclose(fd);
        end
    endtask

    task dump_hamming_to_hex;
        integer fd;
        integer i;
        begin
            fd = $fopen("hamming_dump.hex", "w");
            for (i = 0; i < FRAME_SIZE; i = i + 1) begin
                $fwrite(fd, "%h\n", hamming_frame[i]);
            end
            $fclose(fd);
        end
    endtask

    task dump_mel_energies_to_hex;
        integer fd;
        integer i;
        begin
            fd = $fopen("mel_energies_dump.hex", "w");
            for (i = 0; i < NUM_FILTERS; i = i + 1) begin
                $fwrite(fd, "%h\n", mel_energies[i]);
            end
            $fclose(fd);
        end
    endtask

    task dump_coeficients_to_hex;
        integer fd;
        integer i;
        begin
            fd = $fopen("coeficients_dump.hex", "w");
            for (i = 0; i < NUM_COEFFICIENTS; i = i + 1) begin
                $fwrite(fd, "%h\n", coeficientes[i]);
            end
            $fclose(fd);
        end
    endtask

    integer i;

    initial begin
        $readmemh(AUDIO_PATH, samples);
        $dumpfile("build/dct_tb.vcd");
        $dumpvars(0, dct_tb);

        $display("Iniciando teste da DCT");

        start_move = 0;
        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");
        
        #(1000); // Espera 1ms para garantir que o reset foi aplicado

        wait(dct_done);

        #20; // Espera 10 ciclos de clock

        dump_coeficients_to_hex();
        dump_mel_energies_to_hex();

        //wait(!idle);

        #20;

        //wait(idle);

        #2000;

        $finish;
    end

    always #1 clk = ~clk;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pcm_ready_i <= 0;
            pcm_in      <= 0;
        end else begin
            if (i < MAX_AUDIO_SIZE && !fifo_full) begin
                pcm_in      <= samples[i];
                pcm_ready_i <= 1;
                i           <= i + 1;
            end else begin
                pcm_ready_i <= 0;
            end

            if(fifo_full && pcm_ready_i) begin
                i <= i - 2;
            end
        end
    end

    assign start_move = 0;

endmodule
