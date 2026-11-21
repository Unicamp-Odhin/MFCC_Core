`timescale 1ns / 1ps

module mel_tb ();

`include "mfcc_params.vh"

  // Parametros unificados (fonte: .env -> rtl/mfcc_params.vh)
  localparam NUM_FILTERS = `MFCC_NUM_FILTERS;
  localparam NFFT = `MFCC_NFFT;
  localparam RFFT_SIZE = `MFCC_RFFT_SIZE;  // bins enviados ao mel (convencao do MFCC_Core)
  localparam STREAM_BINS = RFFT_SIZE + 1;  // linhas do ref de power spectrum
  localparam F = `MFCC_F;
  localparam MEL_BANK_SIZE = `MFCC_MEL_BANK_SIZE;

  logic clk;
  logic rst_n;
  logic mel_start;
  logic mel_done;
  logic [31:0] mel_value_energies;
  logic [5:0] mel_prt_energies;
  logic mel_valid;
  logic finished, start_in;

  logic mel_in_valid;
  logic [63:0] mel_test_sample_in;
  logic [9:0] mel_test_ptr;

  // Instância do DUT
  mel #(
      .NUM_MEL_FILTERS(NUM_FILTERS),
      .FFT_SIZE       (NFFT),
      .NUM_RFFT_BINS  (RFFT_SIZE),
      .F              (F),
      .MEL_BANK_SIZE  (MEL_BANK_SIZE)
  ) dut (
      .clk  (clk),
      .rst_n(rst_n),

      .mel_start_i(mel_start),

      .in_valid                (mel_in_valid),
      .power_spectrum_frame_ptr(mel_test_ptr),
      .power_spectrum_frame_in (mel_test_sample_in),

      .mel_done_o(mel_done),

      .mel_value_energies(mel_value_energies),
      .mel_prt_energies  (mel_prt_energies),
      .mel_valid         (mel_valid)
  );

  // Clock
  always #5 clk = ~clk;

  // Memória para simular a entrada
  logic [63:0] power_spectrum_mem [0:STREAM_BINS-1];
  logic [31:0]  energie_expected   [0:NUM_FILTERS-1];

  // Para armazenar resultados
  logic [31:0] energie_out [0:NUM_FILTERS-1];

  initial begin
    $display("---- Iniciando Teste MEL ----");
    $dumpfile({`TESTS_DIR, "/build/mel_tb.vcd"});
    $dumpvars(0, mel_tb);

    start_in  = 0;
    clk       = 0;
    rst_n     = 0;
    mel_start = 0;

    // Reset
    #20;
    rst_n = 1;
    #10;

    // Teste 1
    test_with_data({`TESTS_DIR, "/ref_vectors/4_power_spectrum/0000.hex"}, {
                   `TESTS_DIR, "/ref_vectors/5_energies/0000.hex"});
    // Teste 2
    test_with_data({`TESTS_DIR, "/ref_vectors/4_power_spectrum/0001.hex"}, {
                   `TESTS_DIR, "/ref_vectors/5_energies/0001.hex"});

    $display("---- Teste Finalizado ----");
    $finish;
  end

  task test_with_data(string power_file, string energy_file);
    integer idx;
    integer ok;
    begin
      $display("Carregando %s e %s", power_file, energy_file);

      // Carrega os dados
      $readmemh(power_file, power_spectrum_mem);
      $readmemh(energy_file, energie_expected);

      start_in = 1;

      #10 start_in = 0;

      #20 wait (finished);

      // Limpa as saídas anteriores
      for (idx = 0; idx < NUM_FILTERS; idx++) energie_out[idx] = '0;

      // Inicia processamento
      mel_start = 1;
      #20 mel_start = 0;

      // Fornece dados conforme solicitado
      wait (mel_done);  // Espera terminar

      // Verifica resultados
      ok = 1;
      $display("\n");
      for (idx = 0; idx < NUM_FILTERS; idx++) begin
        if (energie_out[idx] !== energie_expected[idx]) begin
          ok = 0;
          $display("ERRO: idx %0d, esperado = %f, obtido = %f", idx,
                   real'(energie_expected[idx]) / real'(1 << F),
                   real'(energie_out[idx]) / real'(1 << F));
        end
      end
      if (ok == 1) $display("PASSOU NO TESTE\n");

      #50;
    end
  endtask

  integer j;

  always_ff @(posedge clk or negedge rst_n) begin
    finished <= 0;
    if (start_in || !rst_n) begin
      j            <= 0;
      mel_in_valid <= 0;
    end else begin
      if (j < STREAM_BINS) begin
        mel_test_sample_in <= power_spectrum_mem[j];
        mel_in_valid       <= 1;
        mel_test_ptr       <= j[9:0];
        j                  <= j + 1;
      end else begin
        mel_in_valid <= 0;
        finished     <= 1;
      end
    end
  end

  always @(posedge clk) begin
    if (mel_valid) begin
      energie_out[mel_prt_energies] <= mel_value_energies;
    end
  end

endmodule