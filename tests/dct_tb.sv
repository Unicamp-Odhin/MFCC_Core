`timescale 1ns / 1ps
module dct_tb ();

`include "mfcc_params.vh"
  // Parametros unificados (fonte: .env -> rtl/mfcc_params.vh)
  localparam MAX_AUDIO_SIZE = `MFCC_MAX_AUDIO_SIZE;
  localparam SAMPLE_RATE = `MFCC_SAMPLE_RATE;
  localparam WIDTH_MIC = 16;
  localparam WIDTH = 64;
  localparam WIDTH_OUT = 32;
  localparam F_WIDTH = `MFCC_F;
  localparam PCM_FIFO_DEPTH = 2048;
  localparam FRAME_SIZE = `MFCC_FRAME_SIZE;
  localparam FRAME_STEP = `MFCC_FRAME_STEP;
  localparam ALPHA = `MFCC_ALPHA;
  localparam FFT_SIZE = `MFCC_NFFT;
  localparam RFFT_SIZE = `MFCC_RFFT_SIZE;
  localparam NFFT_LOG2 = `MFCC_NFFT_LOG2;
  localparam NUM_CEPS = `MFCC_NUM_CEPS;
  localparam NUM_MEL_FILTERS = `MFCC_NUM_FILTERS;
  localparam MEL_BANK_SIZE = `MFCC_MEL_BANK_SIZE;
  localparam NUM_FRAMES = 2;

  logic clk;
  logic rst_n;

  logic [WIDTH_MIC-1:0] samples[0:MAX_AUDIO_SIZE-1];

  logic signed [WIDTH_MIC-1:0] pcm_in;
  logic signed [WIDTH-1:0] pre_emphasized_signal;
  logic pcm_ready_i;
  logic pre_emphasis_valid;
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

      .x_in (pcm_in),
      .y_out(pre_emphasized_signal)
  );

  logic fifo_empty, fifo_rd_en, fifo_full;
  logic [WIDTH - 1:0] fifo_read_data;

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

      .start_next_state_o(start_hamming)
  );

  logic hamming_done, hamming_out_valid;
  logic [NFFT_LOG2:0] frame_ptr;
  logic signed [WIDTH-1:0] hamming_sample;
  logic signed [WIDTH-1:0] hamming_frame[0:FFT_SIZE-1];

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

  always_ff @(posedge clk) begin
    if (hamming_out_valid) begin
      hamming_frame[frame_ptr] <= hamming_sample;
    end
  end

  logic [NFFT_LOG2:0] fft_ptr;
  logic [  WIDTH-1:0] fft_power_sample;
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

      .start_i(hamming_done),

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

  logic mel_done, mel_valid;
  logic [5:0] mel_ptr;
  logic [WIDTH_OUT-1:0] mel_sample;
  logic [WIDTH_OUT-1:0] mel_energies[0:NUM_MEL_FILTERS - 1];

  mel #(
      .NUM_MEL_FILTERS(NUM_MEL_FILTERS),
      .FFT_SIZE       (FFT_SIZE),
      .NUM_RFFT_BINS  (RFFT_SIZE),
      .F              (F_WIDTH),
      .MEL_BANK_SIZE  (MEL_BANK_SIZE)
  ) u_mel (
      .clk  (clk),
      .rst_n(rst_n),

      .mel_start_i(fft_done),

      .in_valid                (fft_power_valid),
      .power_spectrum_frame_ptr(fft_ptr),
      .power_spectrum_frame_in (fft_power_sample),

      .mel_done_o(mel_done),

      .mel_value_energies(mel_sample),
      .mel_prt_energies  (mel_ptr),
      .mel_valid         (mel_valid)
  );

  always_ff @(posedge clk) begin
    if (mel_valid) begin
      mel_energies[mel_ptr] <= mel_sample;
    end
  end

  logic [$clog2(NUM_CEPS) - 1:0] ceps_ptr;
  logic [WIDTH_OUT-1:0] ceps_sample;
  logic dct_valid, dct_done;
  logic [WIDTH_OUT-1:0] coeficientes[0:NUM_CEPS-1];

  dct #(
      .NUM_CEPS       (NUM_CEPS),
      .NUM_MEL_FILTERS(NUM_MEL_FILTERS),
      .ENERGIES_WIDTH (WIDTH_OUT),
      .CEPS_WIDTH     (WIDTH_OUT),
      .F              (F_WIDTH)
  ) u_dct (
      .clk  (clk),
      .rst_n(rst_n),

      .in_valid   (mel_valid),
      .frame_ptr_i(mel_ptr),
      .energy_in  (mel_sample),

      .start_i(mel_done),

      .dct_done_o(dct_done),

      .dct_valid_o(dct_valid),
      .ceps_out   (ceps_sample),
      .ceps_ptr_o (ceps_ptr)
  );

  always_ff @(posedge clk) begin
    if (dct_valid) begin
      coeficientes[ceps_ptr] <= ceps_sample;
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

  task dump_mel_energies_to_hex(input int frame_idx);
    integer fd;
    integer i;
    string filename;
    begin
      filename = $sformatf("%s/data/5_energies/%04d.hex", `TESTS_DIR, frame_idx);
      fd = $fopen(filename, "w");
      for (i = 0; i < NUM_MEL_FILTERS; i = i + 1) begin
        $fwrite(fd, "%h\n", mel_energies[i]);
      end
      $fclose(fd);
    end
  endtask

  task dump_coeficients_to_hex(input int frame_idx);
    integer fd;
    integer i;
    string filename;
    begin
      filename = $sformatf("%s/data/6_ceps/%04d.hex", `TESTS_DIR, frame_idx);
      fd = $fopen(filename, "w");
      for (i = 0; i < NUM_CEPS; i = i + 1) begin
        $fwrite(fd, "%h\n", coeficientes[i]);
      end
      $fclose(fd);
    end
  endtask

  // Comparacao com as referencias (mesma logica do hamming_tb / window_buffer_tb)
  task automatic check_data_file(input int frame_idx, input string kind, input int count,
                                 input string ref_dir, output logic pass);
    integer fd_test, fd_ref;
    integer k;
    string line;
    logic [WIDTH-1:0] test_val, ref_val;
    begin
      pass = 1;
      fd_test = $fopen($sformatf("%s/data/%s/%04d.hex", `TESTS_DIR, kind, frame_idx), "r");
      fd_ref  = $fopen($sformatf("%s/ref_vectors/%s/%04d.hex", `TESTS_DIR, ref_dir, frame_idx), "r");

      if (fd_test == 0 || fd_ref == 0) begin
        $display("Erro: nao foi possivel abrir arquivos de %s do frame %0d", kind, frame_idx);
        pass = 0;
        if (fd_test != 0) $fclose(fd_test);
        if (fd_ref != 0) $fclose(fd_ref);
        return;
      end

      for (k = 0; k < count; k++) begin
        void'($fgets(line, fd_test));
        void'($sscanf(line, "%h", test_val));
        void'($fgets(line, fd_ref));
        void'($sscanf(line, "%h", ref_val));
        if (test_val !== ref_val) begin
          $display("  Mismatch %s frame %0d, indice %0d: teste=%h, referência=%h", kind,
                   frame_idx, k, test_val, ref_val);
          pass = 0;
        end
      end

      $fclose(fd_test);
      $fclose(fd_ref);
    end
  endtask

  integer frame_id;
  logic ok, ok_energy, ok_ceps;
  integer energy_errors, ceps_errors;

  initial begin
    $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);

    $dumpfile({`TESTS_DIR, "/build/dct_tb.vcd"});
    $dumpvars(0, dct_tb);

    $display("Iniciando teste da DCT");

    energy_errors = 0;
    ceps_errors   = 0;
    ok            = 1;

    rst_n = 0;
    clk   = 0;
    #4;
    rst_n = 1;

    $display("Iniciando processamento de áudio");

    for (frame_id = 0; frame_id < NUM_FRAMES; frame_id++) begin
      @(posedge fft_done);
      $display("FFT %04d concluída", frame_id);
      dump_fft_buffer_to_hex(frame_id);

      wait (dct_done);
      dump_mel_energies_to_hex(frame_id);
      dump_coeficients_to_hex(frame_id);

      check_data_file(frame_id, "5_energies", NUM_MEL_FILTERS, "5_energies", ok_energy);
      if (!ok_energy) begin
        energy_errors++;
        $display("Falha na comparação das energias do frame %0d", frame_id);
      end else begin
        $display("Sucesso na comparação das energias do frame %0d", frame_id);
      end

      check_data_file(frame_id, "6_ceps", NUM_CEPS, "6_ceps", ok_ceps);
      if (!ok_ceps) begin
        ceps_errors++;
        $display("Falha na comparação dos ceps do frame %0d", frame_id);
      end else begin
        $display("Sucesso na comparação dos ceps do frame %0d", frame_id);
      end

      #20;
    end

    if (energy_errors == 0 && ceps_errors == 0)
      $display("=== DCT TB OK: %0d frames, energias e ceps iguais às referências ===", NUM_FRAMES);
    else
      $display("=== DCT TB FALHOU: %0d frames com energias erradas, %0d com ceps errados ===",
               energy_errors, ceps_errors);

    #2000;

    $finish;
  end

  always #1 clk = ~clk;

  // Injecao de amostras: 1 por ciclo quando ha espaco na FIFO (gate !fifo_full
  // preserva a ordem do stream; nunca reenviar amostras anteriores).
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
    end
  end

  assign start_move = dct_done && u_window_buffer.current_state == 0;

endmodule
