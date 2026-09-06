`timescale 1ns / 1ps

import mfcc_pkg::mfcc_data_t;

module mfcc_tb ();

  localparam MAX_AUDIO_SIZE = 4001;
  localparam SAMPLE_RATE = 16000;
  localparam WIDTH_MIC = 16;
  localparam WIDTH = 64;
  localparam WIDTH_OUT = 32;
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
  localparam NUM_CEPS = 12;
  localparam NUM_MEL_FILTERS = 40;


  logic clk;
  logic rst_n;

  logic [WIDTH_MIC-1:0] samples[0:MAX_AUDIO_SIZE-1];
  logic [WIDTH-1:0] pre_emphasis_ref[0:MAX_AUDIO_SIZE-1];
  logic [WIDTH-1:0] hamming_ref[0:FRAME_SIZE-1];
  logic [WIDTH-1:0] window_ref[0:FRAME_SIZE-1];

  logic [WIDTH_MIC-1:0] pcm_in;
  logic pcm_ready;

  logic mfcc_done, start_mfcc;
  mfcc_data_t coeficientes[0:NUM_CEPS-1];

  MFCC_Core #(
      .WIDTH_MIC      (WIDTH_MIC),
      .NUM_CEPS       (NUM_CEPS),
      .NUM_MEL_FILTERS(NUM_MEL_FILTERS),
      .FRAME_SIZE     (FRAME_SIZE),
      .FRAME_STEP     (FRAME_STEP),
      .FFT_SIZE       (FFT_SIZE),
      .PCM_FIFO_DEPTH (PCM_FIFO_DEPTH),
      .ALPHA          (ALPHA)             // Alpha em Q1.15 (0.97 ≈ 31785)
  ) uut (
      .clk  (clk),
      .rst_n(rst_n),

      .pcm_in     (pcm_in),
      .pcm_ready_i(pcm_ready),

      .start_i    (start_mfcc),   // Inicia o processamento imediatamente
      .mfcc_done_o(mfcc_done),
      .mfcc_data_o(coeficientes)
  );

  task dump_mel_in_data(input int frame_id);
    integer fd;
    integer i;
    string  filename;
    begin
      // Monta o nome do arquivo com número
      filename = $sformatf("data/mel_in_data_%0d.hex", frame_id);

      fd = $fopen(filename, "w");
      if (fd) begin
        for (i = 0; i < 257; i = i + 1) begin
          //$fwrite(fd, "%h\n", uut.u_mel.power_spectrum_mem[i]);
        end
        $fclose(fd);
      end else begin
        $display("Erro: não foi possível abrir o arquivo %s", filename);
      end
    end

  endtask

  task dump_mfcc_data();
    integer k;
    for (k = 0; k < NUM_CEPS; k++) begin
      $display("Coeficiente[%0d]: %X", k, coeficientes[k].mfcc_sample);
    end
  endtask


  integer i, j;


  integer pre_emphasis_i;
  integer pre_emphasis_errors;

  initial begin
    pre_emphasis_i      = 0;
    pre_emphasis_errors = 0;
  end

  always @(posedge clk) begin
    if (rst_n && uut.pre_emphasis_valid) begin

      if (pre_emphasis_i >= $size(pre_emphasis_ref)) begin
        $error("Pre-emphasis produziu mais amostras que o vetor de referência!");
      end else if (pre_emphasis_ref[pre_emphasis_i] !== uut.pre_emphasized_signal) begin
        $error("PRE-EMPHASIS MISMATCH [%0d]: esperado=%h, obtido=%h", pre_emphasis_i,
               pre_emphasis_ref[pre_emphasis_i], uut.pre_emphasized_signal);

        pre_emphasis_errors++;
      end

      pre_emphasis_i++;
    end
  end

  // integer window_i;
  // integer window_errors;

  // initial begin
  //     window_i     = 0;
  //     window_errors = 0;
  // end

  // always @(posedge clk) begin
  //     if (rst_n && uut.window_valid_to_read) begin

  //         if (window_ref[window_i] !== uut.window_buffer_data_o) begin
  //             $error(
  //                 "WINDOW MISMATCH [%0d]: esperado=%h, obtido=%h",
  //                 window_i,
  //                 window_ref[window_i],
  //                 uut.window_buffer_data_o
  //             );

  //             window_errors++;
  //         end

  //         window_i++;
  //     end
  // end

  // integer hamming_errors;

  // initial begin
  //     hamming_errors = 0;
  // end

  // always @(posedge clk) begin
  //     if (rst_n && uut.hamming_out_valid) begin

  //         if (hamming_ref[uut.frame_ptr] !== uut.hamming_sample) begin
  //             $error(
  //                 "HAMMING MISMATCH [%0d]: esperado=%h, obtido=%h",
  //                 uut.frame_ptr,
  //                 hamming_ref[uut.frame_ptr],
  //                 uut.hamming_sample
  //             );

  //             hamming_errors++;
  //         end

  //     end
  // end


  initial begin
    $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);
    $readmemh({`TESTS_DIR, "/ref_vectors/1_pre_emphasis.hex"}, pre_emphasis_ref);
    $readmemh({`TESTS_DIR, "/ref_vectors/2_frames/0000.hex"}, window_ref);
    $readmemh({`TESTS_DIR, "/ref_vectors/3_hamming_frames/0000.hex"}, hamming_ref);
    $dumpfile({`TESTS_DIR, "/build/mfcc_tb.vcd"});

    $dumpvars(0, mfcc_tb);

    $display("Iniciando teste do MFCC Core");

    rst_n = 0;
    clk   = 0;
    #20;
    rst_n = 1;
    start_mfcc = 0;

    $display("Iniciando processamento de áudio");

    #20

    for (j = 0; j < 1; j++) begin
      $display("Processando quadro %0d", j + 1);


      wait (uut.hamming_done);
      wait (uut.fft_done);

      wait (mfcc_done);

      #20;
      dump_mfcc_data();

      #10 start_mfcc = 1;
      #20;  // Espera um pouco para garantir que o processamento comece
      start_mfcc = 0;

      #20;
    end
    $display("Processamento concluído. Coeficientes MFCC:");

    #2000;

    $finish;
  end

  always #5 clk = ~clk;  // Clock de 100MHz

  localparam SAMPLE_INTERVAL = 6250;  // ciclos de clock (100MHz / 16kHz)

  integer sample_timer;

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      i            <= 0;
      pcm_ready    <= 0;
      pcm_in       <= 0;
      sample_timer <= 0;
    end else begin
      if (i < MAX_AUDIO_SIZE) begin
        if (sample_timer == 0) begin
          pcm_in       <= samples[i];
          pcm_ready    <= 1;
          i            <= i + 1;
          sample_timer <= SAMPLE_INTERVAL - 1;
        end else begin
          pcm_ready <= 0;
          sample_timer <= sample_timer - 1;
        end
      end else begin
        pcm_ready <= 0;
      end
    end
  end


endmodule
