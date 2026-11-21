`timescale 1ns / 1ns

import mfcc_pkg::mfcc_data_t;

module mfcc_tb ();

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
  localparam WIDTH_OUT = 32;

  localparam FFT_SIZE = `MFCC_NFFT;
  localparam MEL_BANK_SIZE = `MFCC_MEL_BANK_SIZE;

  localparam RFFT_SIZE = `MFCC_RFFT_SIZE;
  localparam NUM_CEPS = `MFCC_NUM_CEPS;
  localparam NUM_MEL_FILTERS = `MFCC_NUM_FILTERS;
  localparam NUM_FRAMES = 10;

  
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
    .WIDTH_MIC        (WIDTH_MIC),
    .WIDTH            (WIDTH),
    .WIDTH_OUT        (WIDTH_OUT),
    .F_WIDTH          (F_WIDTH),
    .ALPHA            (ALPHA),
    .NUM_CEPS         (NUM_CEPS),
    .NUM_MEL_FILTERS  (NUM_MEL_FILTERS),
    .FRAME_SIZE       (FRAME_SIZE),
    .FRAME_STEP       (FRAME_STEP),
    .FFT_SIZE         (FFT_SIZE),
    .PCM_FIFO_DEPTH   (PCM_FIFO_DEPTH),
    .MEL_BANK_SIZE    (MEL_BANK_SIZE)
  ) uut (
      .clock          (clk),
      .rst_n          (rst_n),

      .pcm_in         (pcm_in),
      .pcm_ready_i    (pcm_ready),

      .start_i        (start_mfcc),   
      .auto_restart_i (1'b1), // Inicia o processamento imediatamente
      .mfcc_done_o    (mfcc_done),
      .mfcc_data_o    (coeficientes)
  );

  task dump_mfcc_data();
    integer k;
    for (k = 0; k < NUM_CEPS; k++) begin
      $display("Coeficiente[%0d]: %X", k, coeficientes[k].mfcc_sample);
    end
  endtask

  // Comparacao dos ceps com a referencia gerada pelo modelo C
  integer ceps_errors;
  integer frame_ok_count;

  task check_mfcc_frame(input int frame_idx);
    integer fd, k, errors;
    logic [31:0] ref_val;
    string filename;
    begin
      errors = 0;
      filename = $sformatf("%s/ref_vectors/6_ceps/%04d.hex", `TESTS_DIR, frame_idx);
      fd = $fopen(filename, "r");
      if (fd == 0) begin
        $display("Erro: nao foi possivel abrir %s", filename);
        ceps_errors++;
        return;
      end
      for (k = 0; k < NUM_CEPS; k++) begin
        void'($fscanf(fd, "%h\n", ref_val));
        if (coeficientes[k].mfcc_sample !== ref_val) begin
          if (errors < 3)
            $display("  MFCC MISMATCH [%0d][%0d]: esperado=%h, obtido=%h", frame_idx, k,
                     ref_val, coeficientes[k].mfcc_sample);
          errors++;
        end
      end
      $fclose(fd);
      if (errors == 0) begin
        frame_ok_count++;
        $display("[MFCC %04d] OK %0d/%0d", frame_idx, NUM_CEPS, NUM_CEPS);
      end else begin
        ceps_errors++;
        $display("[MFCC %04d] FALHA: %0d/%0d coeficientes diferentes", frame_idx, errors, NUM_CEPS);
      end
    end
  endtask


  integer i, j;


  integer pre_emphasis_i;
  integer pre_emphasis_errors;

  initial begin
    pre_emphasis_i      = 0;
    pre_emphasis_errors = 0;
    ceps_errors         = 0;
    frame_ok_count      = 0;
  end

  always @(posedge clk) begin 
    if (uut.fifo_full)
      $error("Error fifo cheia");
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

  initial begin
    $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);
    $readmemh({`TESTS_DIR, "/ref_vectors/1_pre_emphasis.hex"}, pre_emphasis_ref);
    $readmemh({`TESTS_DIR, "/ref_vectors/2_frames/0000.hex"}, window_ref);
    $readmemh({`TESTS_DIR, "/ref_vectors/3_hamming_frames/0000.hex"}, hamming_ref);
    $dumpfile({`TESTS_DIR, "/build/mfcc_tb.vcd"});

    $dumpvars(0, mfcc_tb);

    $display("Iniciando teste do MFCC Core");

    @(posedge clk); 
    rst_n = 0;
    clk   = 0;

    @(posedge clk); 
    rst_n = 1;
    start_mfcc = 1;

    @(posedge clk); 
    start_mfcc = 0;

    $display("Iniciando processamento de áudio");

    for (j = 0; j < NUM_FRAMES; j++) begin
      $display("\nProcessando quadro %0d", j + 1);
      wait (mfcc_done);
      dump_mfcc_data();
      check_mfcc_frame(j);
      repeat(5) @(posedge clk);
    end
    $display("Processamento concluído. Coeficientes MFCC:");

    #2000;

    $finish;
  end

  always #5 clk = ~clk;  // Clock de 100MHz

  localparam SAMPLE_INTERVAL = `MFCC_SAMPLE_INTERVAL;  // ciclos de clock @100MHz

  integer sample_timer;
  logic   mic_read;
  assign mic_read = sample_timer == 0;

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      i            <= 0;
      pcm_ready    <= 0;
      pcm_in       <= 0;
      sample_timer <= 0;
    end else begin
      if (i < MAX_AUDIO_SIZE) begin
        if (mic_read) begin
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
