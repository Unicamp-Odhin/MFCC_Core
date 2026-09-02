`timescale 1ns/1ps

module mel #(
    parameter NUM_MEL_FILTERS = 40,
    parameter FFT_SIZE = 512,
    parameter NUM_RFFT_BINS = FFT_SIZE/2 + 1,
    parameter RFFT_BIN_ADDR_WIDTH = $clog2(NUM_RFFT_BINS),
    parameter POWER_WIDTH = 32,
    parameter MEL_COEFF_WIDTH_F = 8,
    parameter FRACTIONAL_BITS = 14,
    parameter MEL_ENERGY_WIDTH = $clog2(($clog2(NUM_RFFT_BINS)+POWER_WIDTH) * 6),
    parameter FILTER_INDEX_WIDTH = $clog2(NUM_MEL_FILTERS),
    parameter MEL_BANK_SIZE = 31
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [RFFT_BIN_ADDR_WIDTH-1:0] power_spectrum_frame_ptr,
    input  logic [POWER_WIDTH-1:0] power_spectrum_frame_in,

    input  logic mel_start_i,

    output logic mel_done_o,

    output logic [MEL_ENERGY_WIDTH-1:0] mel_value_energies,
    output logic [FILTER_INDEX_WIDTH-1:0] mel_prt_energies,
    output logic mel_valid

);
    localparam ACCUMULATOR_WIDTH = $clog2(NUM_RFFT_BINS)+POWER_WIDTH;
    localparam MEL_MEMORY_DEPTH = MEL_BANK_SIZE * NUM_MEL_FILTERS;
    localparam MEL_BANK_ADDR_WIDTH=$clog2(MEL_BANK_SIZE) + 1;
    localparam MEL_MEMORY_ADDR_WIDTH=$clog2(MEL_MEMORY_DEPTH);

    logic [POWER_WIDTH-1:0] power_spectrum_mem [0:NUM_RFFT_BINS-1];

    always_ff @( posedge clk ) begin : POWER_SPECTRUM_BUFFER_INPUT_LOGIC
        if(in_valid) begin
            power_spectrum_mem[power_spectrum_frame_ptr] <= power_spectrum_frame_in;
        end
    end

    logic [ACCUMULATOR_WIDTH:0] sum, sum_next;
    logic [FILTER_INDEX_WIDTH-1:0] i, i_next;
    logic [RFFT_BIN_ADDR_WIDTH-1:0] k, k_next, k_init;
    logic [MEL_MEMORY_ADDR_WIDTH-1:0] i_total, i_total_next, prt_memory;

    logic [POWER_WIDTH+MEL_COEFF_WIDTH_F-1:0] temp_mul_next;
    logic [MEL_ENERGY_WIDTH-1:0] temp_log2;

    logic [POWER_WIDTH-1:0] power_spectrum;
    assign power_spectrum = power_spectrum_mem[k];

    logic [POWER_WIDTH-1:0] mel_memory [0:MEL_MEMORY_DEPTH-1];
    logic [POWER_WIDTH-1:0] filter;

    assign prt_memory = i_total + 2 + k - k_init;

    assign filter = (prt_memory < MEL_MEMORY_DEPTH) ? mel_memory[prt_memory] : 32'h0;

    initial begin
        $readmemh("tables/mel_table.hex", mel_memory);
    end

    typedef enum logic [1:0] {
        IDLE,
        LOAD,
        CALC_SUM,
        CALC_ENERGY
    } state_t;

    state_t state, next_state;


    always_ff @(posedge clk ) begin
        if (!rst_n) begin
            state      <= IDLE;
            sum        <= 0;
            i          <= 0;
            k          <= 0;
            i_total    <= 0;
            mel_done_o <= 0;
        end else begin
            state   <= next_state;
            sum     <= sum_next;
            i       <= i_next;
            k       <= k_next;
            i_total <= i_total_next;

            if (i == NUM_MEL_FILTERS) begin
                state      <= IDLE;
                mel_done_o <= 1;
            end else begin
                mel_done_o <= 0;
            end
        end
    end
           
    assign k_init = mel_memory[i_total];

    always_comb begin
        mel_value_energies = '0;
        mel_prt_energies  = i;
        mel_valid         = 1'b0;

        next_state    = state;
        sum_next      = sum;
        i_next        = i;
        k_next        = k;
        temp_mul_next = 0;
        i_total_next  = i_total;

        case (state)
            IDLE: begin
                mel_valid     = 1'b0;
                sum_next      = 0;
                i_next        = 0;
                i_total_next  = 0;

                if (mel_start_i)
                    next_state = LOAD;
            end

            LOAD: begin
                mel_valid          = 1'b0;
                mel_value_energies = '0;
                mel_prt_energies   = i;

                if (i < NUM_MEL_FILTERS) begin
                    k_next      = mel_memory[i_total];
                    next_state  = CALC_SUM;
                end else begin
                    next_state  = IDLE;
                end
            end

            CALC_SUM: begin
                mel_valid         = 1'b0;
                mel_value_energies = '0;
                mel_prt_energies   = i;

                if (k <= mel_memory[i_total + 1]) begin
                    temp_mul_next = ((power_spectrum * filter) + (1 << (FRACTIONAL_BITS-1)));
                    sum_next      = sum + temp_mul_next[POWER_WIDTH+FRACTIONAL_BITS-1:FRACTIONAL_BITS];
                    k_next        = k + 1;
                    next_state    = CALC_SUM;
                end else begin
                    next_state    = CALC_ENERGY;
                end
            end

            CALC_ENERGY: begin
                i_next        = i + 1;
                i_total_next  = i_total + MEL_BANK_SIZE;
                sum_next      = 0;

                mel_valid        = 1'b1;
                mel_prt_energies = i;

                if (sum <= 0) begin
                    mel_value_energies = '0; // Pode ajustar para saturar em 0
                end else begin
                    mel_value_energies = temp_log2;
                end

                next_state = LOAD;
            end

            default: begin
                next_state         = IDLE;
                sum_next           = 0;
                i_next             = 0;
                i_total_next       = 0;
                k_next             = 0;
                mel_valid          = 1'b0;
                mel_value_energies = 8'h0;
                mel_prt_energies   = 6'h0;
            end
        endcase
    end

    base2log #(
        .WIDTH(ACCUMULATOR_WIDTH),
        .OUTPUT_WIDTH(MEL_ENERGY_WIDTH)
    ) u_base2log (
        .number_i(sum),
        .log_o(temp_log2)
    );

endmodule
