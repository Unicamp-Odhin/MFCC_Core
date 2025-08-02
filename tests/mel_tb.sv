`timescale 1ns/1ps

module mel_tb();

	localparam NUM_FILTERS = 40;
	localparam NFFT        = 512;
	localparam NRFFT       = NFFT/2 + 1;

	logic clk;
	logic rst_n;
	logic mel_start;
	logic mel_done;
	logic [7:0] mel_value_energies;
	logic [5:0] mel_prt_energies;
	logic mel_valid;
	logic finished, start_in;

	logic mel_in_valid;
	logic [31:0] mel_test_sample_in;
	logic [8:0] mel_test_ptr;

	// Instância do DUT
	mel #(
		.NUM_FILTERS (NUM_FILTERS), 
		.NRFFT       (NRFFT)
	) dut (
		.clk                        (clk),
		.rst_n                      (rst_n),

		.mel_start_i                (mel_start),

		.in_valid                   (mel_in_valid),
		.power_spectrum_frame_ptr   (mel_test_ptr),
		.power_spectrum_frame_in    (mel_test_sample_in),

		.mel_done_o                 (mel_done),

		.mel_value_energies         (mel_value_energies),
		.mel_prt_energies           (mel_prt_energies),
		.mel_valid                  (mel_valid)
	);

	// Clock
	always #5 clk = ~clk;

	// Memória para simular a entrada
	//   logic [31:0] power_spectrum_mem [0:NRFFT-1];
	logic [31:0] power_spectrum_mem [0:NRFFT-1];
	logic [7:0]  energie_expected   [0:NUM_FILTERS-1];

	// Para armazenar resultados
	logic [7:0] energie_out [0:NUM_FILTERS-1];

	initial begin
		$display("---- Iniciando Teste MEL ----");
		$dumpfile("build/mel_tb.vcd");     // Ou use .fst para arquivos menores: mel_tb.fst
		$dumpvars(0, mel_tb);        // 'mel_tb' é o nome do seu módulo de testbench

		start_in  = 0;
		clk       = 0;
		rst_n     = 0;
		mel_start = 0;

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

		start_in = 1;

		#10

		start_in = 0;

		#20

		wait(finished);

		// Limpa as saídas anteriores
		for (idx = 0; idx < NUM_FILTERS; idx++)
			energie_out[idx] = 8'd0;

		// Inicia processamento
		mel_start = 1;
		#20 mel_start = 0;

		// Fornece dados conforme solicitado
		wait (mel_done); // Espera terminar

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

	integer j;

	always_ff @(posedge clk or negedge rst_n ) begin
        finished <= 0;
        if (start_in || !rst_n) begin
            j            <= 0;
            mel_in_valid <= 0;
        end else begin
            if (j < NRFFT) begin
                mel_test_sample_in <= power_spectrum_mem[j];
                mel_in_valid       <= 1;
                mel_test_ptr       <= j[8:0];
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
