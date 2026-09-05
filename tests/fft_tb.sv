`timescale 1ns/1ps

`define SIMULATION 1
//`define DIRECT_FRAME

module fft_tb ();
    localparam MAX_AUDIO_SIZE = 50177;
    localparam SAMPLE_RATE = 16000;
    localparam WIDTH_MIC = 16;
    localparam WIDTH = 64;
    localparam F_WIDTH = 16;
    localparam PCM_FIFO_DEPTH = 2048;
    localparam FRAME_SIZE_T = 0.025;
    localparam FRAME_STEP_T = 0.01;
    localparam FRAME_SIZE = $rtoi(SAMPLE_RATE * FRAME_SIZE_T);
    localparam FRAME_STEP = $rtoi(SAMPLE_RATE * FRAME_STEP_T);
    localparam ALPHA = $rtoi(0.97 * (1 << F_WIDTH));
    localparam FFT_SIZE = 512;
    localparam RFFT_SIZE = FFT_SIZE / 2;
    localparam NFFT_LOG2 = $clog2(FFT_SIZE);

    logic clk;
    logic rst_n;

    logic [WIDTH_MIC-1:0] samples [0:MAX_AUDIO_SIZE-1];

    logic signed [WIDTH_MIC-1:0] pcm_in;
    logic signed [WIDTH-1:0] pre_emphasized_signal;
    logic pcm_ready_i;
    logic pre_emphasis_valid, pre_emphasis_valid_prev, pre_emphasis_valid_posedge;
    assign pre_emphasis_valid_posedge = ~pre_emphasis_valid_prev & pre_emphasis_valid;
    logic x_prev_valid;
    integer i;

    assign x_prev_valid = ~(pre_emphasis_valid_posedge & (i != 2));

    pre_emphasis #(
        .WIDTH_IN (WIDTH_MIC),
        .WIDTH_OUT (WIDTH),
        .F (F_WIDTH),
        .ALPHA (ALPHA) 
    ) u_pre_emphasis (
        .clk (clk),
        .rst_n (rst_n),

        .in_valid (pcm_ready_i),
        .out_valid (pre_emphasis_valid),

        .x_in (pcm_in), // Sinal de entrada
        .y_out (pre_emphasized_signal) // Sinal de saída
    );

    logic fifo_empty, fifo_full, fifo_rd_en;
    logic [WIDTH-1:0] fifo_read_data;

    fifo #(
        .DEPTH (PCM_FIFO_DEPTH),
        .WIDTH (WIDTH)
    ) tx_fifo (
        .clk          (clk),
        .rst_n        (rst_n),

        .wr_en_i      (pre_emphasis_valid & x_prev_valid),
        .rd_en_i      (fifo_rd_en),

        .write_data_i (pre_emphasized_signal),
        .full_o       (fifo_full),
        .empty_o      (fifo_empty),
        .read_data_o  (fifo_read_data)
    );

    logic [WIDTH-1:0] window_buffer_data;
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
        .read_data_o          (window_buffer_data),
        .valid_to_read_o      (window_valid_to_read),

        .start_next_state_o   (start_hamming)
    );


    logic hamming_done, hamming_out_valid;
    logic [NFFT_LOG2-1:0] frame_ptr;
    logic signed [WIDTH-1:0] hamming_sample;

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
        .frame_sample_i   (window_buffer_data), // Sinal de entrada
        .hamming_sample_o (hamming_sample), // Sinal de saída

        .out_valid_o      (hamming_out_valid),
        .done_o           (hamming_done)
    );

    logic [NFFT_LOG2-1:0] fft_ptr;
    logic [WIDTH-1:0] fft_power_sample;
    logic fft_power_valid, fft_done;

    `ifdef DIRECT_FRAME
        logic [15:0] fft_test_buffer [0:FFT_SIZE - 1];
        logic [15:0] fft_test_sample;
        logic [9:0] fft_test_ptr;
        logic fft_test_valid;
        logic start_fft;
    `endif

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

    `ifdef DIRECT_FRAME
        .in_valid       (fft_test_valid),
        .frame_ptr_i    (fft_test_ptr),
        .frame_sample_i        (fft_test_sample),
        .start_i        (start_fft),
    `endif
        .start_i        (hamming_done),


        .power_ptr_o    (fft_ptr),
        .power_valid_o  (fft_power_valid),
        .power_sample_o (fft_power_sample),

        .fft_done_o     (fft_done)
    );

    logic [WIDTH:0] rfft_power_buffer [0: RFFT_SIZE];

    always_ff @( posedge clk ) begin
        if(fft_power_valid) begin
            rfft_power_buffer[fft_ptr] <= fft_power_sample;
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

    task dump_fft_buffer_to_hex;
        integer fd;
        integer i;
        begin
            fd = $fopen({`TESTS_DIR, "/data/4_power_spectrum/0000.hex"}, "w");
            for (i = 0; i <= RFFT_SIZE; i = i + 1) begin
                $fwrite(fd, "%x\n", rfft_power_buffer[i]);
            end
            $fclose(fd);
        end
    endtask

    integer clock_cycles;

    initial begin
        $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);
        `ifdef DIRECT_FRAME
        $readmemh("dumps/hamming_frame_0.hex", fft_test_buffer);
        `endif
        $dumpfile({`TESTS_DIR, "/build/fft_tb.vcd"});

        $dumpvars(0, fft_tb);

        $display("Iniciando teste da FFT");

        start_move = 0;
        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");

        #10
    `ifdef DIRECT_FRAME
        wait(finished);
    `endif
        #20;

        $display("Iniciando FFT");

        #100;
    `ifdef DIRECT_FRAME
        start_fft = 1;
        #2;
        start_fft = 0;
    `endif    

        //#(1000); // Espera 1ms para garantir que o reset foi aplicado


        //wait(hamming_done);

        //dump_hamming_to_hex;

        #20; // Espera 20 ciclos de clock

        wait(fft_done);
        $display("FFT concluída");
        $display("Numero de ciclos de clock: %d", clock_cycles);

        #20; // Espera 10 ciclos de clock

        dump_fft_buffer_to_hex;

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
            pre_emphasis_valid_prev <= 0;
        end else begin
            if (i < MAX_AUDIO_SIZE && !fifo_full) begin
                pcm_in      <= samples[i];
                pcm_ready_i <= 1;
                i           <= i + 1;
            end else begin
                pcm_ready_i <= 0;
            end

            if(fifo_full && pcm_ready_i) begin
                i <= i - 3;
            end
            pre_emphasis_valid_prev <= pre_emphasis_valid;
        end
    end

    always_ff @( posedge clk or negedge rst_n ) begin
        if(!rst_n) begin
            clock_cycles <= 0;
        end else begin
            clock_cycles <= clock_cycles + 1;
        end
    end

    `ifdef DIRECT_FRAME
    integer j;

    logic finished;

    always_ff @(posedge clk or negedge rst_n) begin
        finished <= 0;
        if (!rst_n) begin
            j              <= 0;
            fft_test_valid <= 0;
        end else begin
            if (j < FFT_SIZE) begin
                fft_test_sample <= fft_test_buffer[j];
                fft_test_valid  <= 1;
                fft_test_ptr    <= j[9:0];
                j               <= j + 1;
            end else begin
                fft_test_valid <= 0;
                finished       <= 1;
            end
        end
    end
    `endif

endmodule
