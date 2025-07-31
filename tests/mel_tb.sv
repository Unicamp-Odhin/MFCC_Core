`timescale 1ns/1ps

module mel_tb;

  parameter NUM_FILTERS = 40;
  parameter NFFT = 512/2 + 1;

  logic clk;
  logic rst_n;
  logic mel_start_i;
  logic [$clog2(NFFT):0] prt_power_spectrum_frame;
  logic [31:0] value_power_spectrum_frame;
  logic mel_done_o;
  logic [8:0] mel_value_energies;
  logic [5:0] mel_prt_energies;
  logic mel_valid;

  // Instância do DUT
  MEL #(.NUM_FILTERS(NUM_FILTERS), .NFFT(NFFT)) dut (
    .clk(clk),
    .rst_n(rst_n),
    .mel_start_i(mel_start_i),
    .prt_power_spectrum_frame(prt_power_spectrum_frame),
    .value_power_spectrum_frame(value_power_spectrum_frame),
    .mel_done_o(mel_done_o),
    .mel_value_energies(mel_value_energies),
    .mel_prt_energies(mel_prt_energies),
    .mel_valid(mel_valid)
  );

  // Clock
  always #5 clk = ~clk;

  // Memória para simular a entrada
  logic [31:0] power_spectrum_mem [0:NFFT-1];
  logic [8:0]  energie_expected [0:NUM_FILTERS-1];

  // Para armazenar resultados
  logic [8:0] energie_out [0:NUM_FILTERS-1];
  integer i;

  initial begin
    $display("---- Iniciando Teste MEL ----");
    $dumpfile("mel_tb.vcd");     // Ou use .fst para arquivos menores: mel_tb.fst
    $dumpvars(0, mel_tb);        // 'mel_tb' é o nome do seu módulo de testbench


    clk = 0;
    rst_n = 0;
    mel_start_i = 0;
    value_power_spectrum_frame = 0;

    // Reset
    #20;
    rst_n = 1;
    #10;

    // Teste 1
    test_with_data("data/power_spectrum_1.hex", "data/energie_1.hex");

    // Teste 2
    test_with_data("data/power_spectrum_2.hex", "data/energie_2.hex");

    $display("---- Teste Finalizado ----");
    $finish;
  end

  task test_with_data(string power_file, string energy_file);
    integer idx;
    begin
      $display("Carregando %s e %s", power_file, energy_file);

      // Carrega os dados
      $readmemh(power_file, power_spectrum_mem);
      $readmemh(energy_file, energie_expected);

      // Limpa as saídas anteriores
      for (idx = 0; idx < NUM_FILTERS; idx++)
        energie_out[idx] = 9'd0;

      // Inicia processamento
      mel_start_i = 1;
      #10 mel_start_i = 0;

      // Fornece dados conforme solicitado
      wait (mel_done_o == 1); // Espera terminar
      
      fork
        begin
          forever begin
            @(posedge clk);
            value_power_spectrum_frame <= power_spectrum_mem[prt_power_spectrum_frame];
          end
        end

        begin
          idx = 0;
          while (!mel_done_o) begin
            @(posedge clk);
            if (mel_valid) begin
              energie_out[mel_prt_energies] = mel_value_energies;
              idx++;
            end
          end
        end
      join_any
      disable fork;

      // Verifica resultados
      for (idx = 0; idx < NUM_FILTERS; idx++) begin
        if (energie_out[idx] !== energie_expected[idx]) begin
          $display("Erro: idx %0d, esperado = %0d, obtido = %0d", 
                    idx, energie_expected[idx], energie_out[idx]);
        end
      end
      #50;
    end
  endtask

endmodule
