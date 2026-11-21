`timescale 1ns / 1ns

`define SIMULATION 1
//`define DIRECT_FRAME

module fft_tb ();

`include "mfcc_params.vh"
  // Parametros unificados (fonte: .env -> rtl/mfcc_params.vh)
  localparam MAX_AUDIO_SIZE = `MFCC_MAX_AUDIO_SIZE;
  localparam SAMPLE_RATE = `MFCC_SAMPLE_RATE;
  localparam WIDTH_MIC = 16;
  localparam WIDTH = 64;
  localparam F_WIDTH = `MFCC_F;
  localparam PCM_FIFO_DEPTH = 256;
  localparam FRAME_SIZE = `MFCC_FRAME_SIZE;
  localparam FRAME_STEP = `MFCC_FRAME_STEP;
  localparam ALPHA = `MFCC_ALPHA;
  localparam FFT_SIZE = `MFCC_NFFT;
  localparam RFFT_SIZE = `MFCC_RFFT_SIZE;
  localparam NFFT_LOG2 = `MFCC_NFFT_LOG2;

  logic clk;
  logic rst_n;

  logic [WIDTH_MIC-1:0] samples[0:MAX_AUDIO_SIZE-1];

  logic signed [WIDTH_MIC-1:0] pcm_in;
  logic signed [WIDTH-1:0] pre_emphasized_signal;
  logic pcm_ready_i;
  logic pre_emphasis_valid, pre_emphasis_valid_prev;
  integer i;

  pre_emphasis #(
      .WIDTH_IN(WIDTH_MIC),
      .WIDTH_OUT(WIDTH),
      .F(F_WIDTH),
      .ALPHA(ALPHA)
  ) u_pre_emphasis (
      .clk  (clk),
      .rst_n(rst_n),

      .in_valid (pcm_ready_i),
      .out_valid(pre_emphasis_valid),

      .x_in(pcm_in),
      .y_out(pre_emphasized_signal)
  );

  logic fifo_empty, fifo_full, fifo_rd_en;
  logic [WIDTH-1:0] fifo_read_data;

  fifo #(
      .DEPTH(PCM_FIFO_DEPTH),
      .WIDTH(WIDTH)
  ) tx_fifo (
      .clk  (clk),
      .rst_n(rst_n),

      .wr_en_i(pre_emphasis_valid),
      .rd_en_i(fifo_rd_en),

      .write_data_i(pre_emphasized_signal),
      .full_o      (fifo_full),
      .empty_o     (fifo_empty),
      .read_data_o (fifo_read_data)
  );

  logic [WIDTH-1:0] window_buffer_data;
  logic window_valid_to_read;
  logic start_move;
  logic start_hamming;
  logic idle_window;

  window_buffer #(
      .WIDTH     (WIDTH),
      .FRAME_SIZE(FRAME_SIZE),
      .FRAME_STEP(FRAME_STEP)
  ) u_window_buffer (
      .clk  (clk),
      .rst_n(rst_n),

      .start_move(start_move),

      .fifo_rd_en_o(fifo_rd_en),
      .fifo_data_i (fifo_read_data),
      .fifo_empty_i(fifo_empty),

      .read_data_o    (window_buffer_data),
      .valid_to_read_o(window_valid_to_read),

      .start_next_state_o(start_hamming),
      .idle_o(idle_window)
  );


  logic hamming_done, hamming_out_valid;
  logic [NFFT_LOG2-1:0] frame_ptr;
  logic signed [WIDTH-1:0] hamming_sample;

  hamming_window #(
      .N               (WIDTH),
      .F               (F_WIDTH),
      .NUM_COEFFICIENTS(FRAME_SIZE),
      .NFFT_SIZE       (FFT_SIZE)
  ) u_hamming_window (
      .clk  (clk),
      .rst_n(rst_n),

      .start_i(start_hamming),

      .valid_to_read_i(window_valid_to_read),

      .frame_ptr_o     (frame_ptr),
      .frame_sample_i  (window_buffer_data),
      .hamming_sample_o(hamming_sample),

      .out_valid_o(hamming_out_valid),
      .done_o     (hamming_done)
  );

  logic [NFFT_LOG2-1:0] fft_ptr;
  logic [WIDTH-1:0] fft_power_sample;
  logic fft_power_valid, fft_done;

  fft_radix2 #(
      .NFFT(FFT_SIZE),
      .WIDTH(WIDTH),
      .F(F_WIDTH),
      .NFFT_LOG2(NFFT_LOG2)
  ) u_fft (
      .clk  (clk),
      .rst_n(rst_n),

      .in_valid      (hamming_out_valid),
      .frame_ptr_i   (frame_ptr),
      .frame_sample_i(hamming_sample),
      .start_i       (hamming_done),


      .power_ptr_o   (fft_ptr),
      .power_valid_o (fft_power_valid),
      .power_sample_o(fft_power_sample),

      .fft_done_o(fft_done)
  );

  logic [WIDTH-1:0] rfft_power_buffer[0:RFFT_SIZE];

  always_ff @(posedge clk) begin
    if (fft_power_valid) begin
      rfft_power_buffer[fft_ptr] <= fft_power_sample;
    end
  end

  task dump_fft_buffer_to_hex(input int frame_idx);
    integer fd;
    integer i;
    string filename;
    begin
      filename = $sformatf("%s/data/4_power_spectrum/%04d.hex", `TESTS_DIR, frame_idx);
      fd = $fopen(filename, "w");
      for (i = 0; i <= RFFT_SIZE; i = i + 1) begin
        $fwrite(fd, "%x\n", rfft_power_buffer[i]);
      end
      $fclose(fd);
    end
  endtask

  integer clock_cycles;

  initial begin
    $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);
    $dumpfile({`TESTS_DIR, "/build/fft_tb.vcd"});

    $dumpvars(0, fft_tb);

    $display("Iniciando teste da FFT");

    rst_n = 0;
    clk = 0;
    repeat(2) @(posedge clk); 
    rst_n = 1;

    $display("Iniciando processamento de áudio");
    $display("Iniciando FFT");

    @(posedge fft_done);
    $display("FFT 0000 concluída");
    $display("Numero de ciclos de clock: %d", clock_cycles);
    dump_fft_buffer_to_hex(0);
    @(posedge clk); 

    @(posedge fft_done);
    $display("FFT 0001 concluída");
    dump_fft_buffer_to_hex(1);

    #2000;

    $finish;
  end

  always #5 clk = ~clk;

  localparam SAMPLE_INTERVAL = `MFCC_SAMPLE_INTERVAL;  // ciclos de clock @100MHz

  integer sample_timer;
  logic   mic_read;
  assign mic_read = sample_timer == 0;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pcm_ready_i             <= 0;
      pcm_in                  <= 0;
      pre_emphasis_valid_prev <= 0;
    end else begin
      if (i < MAX_AUDIO_SIZE && !fifo_full) begin
        pcm_in      <= samples[i];
        pcm_ready_i <= 1;
        i           <= i + 1;
      end else begin
        pcm_ready_i <= 0;
      end

      if (fifo_full && pcm_ready_i) begin
        // FIFO cheia: a injecao de amostras continua sendo feita apenas quando
        // ha espaco (!fifo_full no if acima), preservando a ordem do stream.
        // NAO e permitido reenviar amostras anteriores (i <= i - 3): isso
        // duplicava amostras e corrompia o janelamento dos quadros seguintes.
      end
      pre_emphasis_valid_prev <= pre_emphasis_valid;
    end
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      clock_cycles <= 0;
    end else begin
      clock_cycles <= clock_cycles + 1;
    end
  end

  assign start_move = fft_done && idle_window;

endmodule
