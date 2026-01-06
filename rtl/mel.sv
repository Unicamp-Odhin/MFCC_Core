`timescale 1ns/1ps

module mel #(
    parameter NUM_FILTERS  = 40,
    parameter NFFT         = 512,
    parameter NRFFT        = NFFT/2 + 1,
    parameter NRFFT_LOG2   = $clog2(NRFFT),
    parameter INPUT_WIDTH  = 32,
    parameter OUTPUT_WIDTH = 8,
    parameter NF_LOG2      = $clog2(NUM_FILTERS)
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [NRFFT_LOG2 - 1:0] power_spectrum_frame_ptr,
    input  logic [INPUT_WIDTH - 1:0] power_spectrum_frame_in,

    input  logic mel_start_i,

    output logic mel_done_o,
    output logic [OUTPUT_WIDTH - 1:0] mel_value_energies,
    output logic [NF_LOG2 - 1:0] mel_prt_energies,
    output logic mel_valid
);

    // Memória de espectro
    logic [INPUT_WIDTH - 1:0] power_spectrum_mem [0:NRFFT-1];
    always_ff @(posedge clk)
        if (in_valid)
            power_spectrum_mem[power_spectrum_frame_ptr] <= power_spectrum_frame_in;

    // Memória de filtros Mel
    logic [31:0] mel_memory [0:1319];
    initial $readmemh("tables/mel_data.hex", mel_memory);

    // Pipeline registers
    typedef struct packed {
        logic [31:0] power_spectrum;
        logic [31:0] filter;
        logic [10:0] i_total;
        logic [8:0]  k;
        logic [8:0]  k_end;
        logic [5:0]  i;
        logic [31:0] sum;
    } stage_t;

    stage_t stage_load, stage_mul, stage_sum, stage_energy;

    logic [10:0] i_total_next;
    logic [7:0]  temp_log2;

    // Propagação do índice e filtro
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            stage_load <= '0;
            stage_mul <= '0;
            stage_sum <= '0;
            stage_energy <= '0;
            mel_done_o <= 0;
            mel_valid <= 0;
            mel_value_energies <= 0;
            mel_prt_energies <= 0;
        end else begin
            // STAGE LOAD
            if (mel_start_i || stage_energy.i < NUM_FILTERS) begin
                stage_load.i <= stage_energy.i;
                stage_load.i_total <= stage_energy.i_total;
                stage_load.k <= mel_memory[stage_energy.i_total][8:0];
                stage_load.k_end <= mel_memory[stage_energy.i_total + 1][8:0];
                stage_load.sum <= 0;
            end

            // STAGE MUL
            stage_mul <= stage_load;
            stage_mul.power_spectrum <= power_spectrum_mem[stage_load.k];
            stage_mul.filter <= mel_memory[stage_load.i_total + 2 + stage_load.k - stage_load.k][31:0]; // index correto
           
            // Multiplicação
            stage_sum <= stage_mul;
            stage_sum.sum <= stage_mul.sum + ((stage_mul.power_spectrum * stage_mul.filter + (1<<30)) >> 31);
            stage_sum.k <= stage_mul.k + 1;

            // Check end of filter
            stage_energy <= stage_sum;
            if (stage_sum.k > stage_sum.k_end) begin
                mel_valid <= 1;
                mel_prt_energies <= stage_sum.i;
                if (stage_sum.sum <= 0)
                    mel_value_energies <= 8'h0;
                else
                    mel_value_energies <= temp_log2;

                // Preparar próximo filtro
                stage_energy.i_total <= stage_sum.i_total + 33;
                stage_energy.i <= stage_sum.i + 1;
            end else begin
                mel_valid <= 0;
            end

            // Finalização
            if (stage_energy.i >= NUM_FILTERS)
                mel_done_o <= 1;
            else
                mel_done_o <= 0;
        end
    end

    // Log2 unit
    base2log u_base2log (
        .number_i(stage_energy.sum),
        .log_o(temp_log2)
    );

endmodule
