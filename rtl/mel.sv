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

    logic [INPUT_WIDTH - 1:0] power_spectrum_mem [0:NRFFT-1];

    always_ff @( posedge clk ) begin : POWER_SPECTRUM_BUFFER_INPUT_LOGIC
        if(in_valid) begin
            power_spectrum_mem[power_spectrum_frame_ptr] <= power_spectrum_frame_in;
        end
    end


    logic [31:0] sum, sum_next;
    logic [5:0] i, i_next;
    logic [8:0] k, k_next, k_init;
    logic [10:0] i_total, i_total_next;

    logic [63:0] temp_mul_next;
    logic [7:0] temp_log2;

    logic [31:0] power_spectrum;
    assign power_spectrum = power_spectrum_mem[k];

    logic [31:0] mel_memory [0:1319];
    logic [10:0] prt_memory;

    logic [31:0] filter;

    assign prt_memory = i_total + 2 + k - k_init;

    assign filter = (prt_memory < 1320) ? mel_memory[prt_memory] : 32'h0;

    initial begin
        $readmemh("tables/mel_data.hex", mel_memory);
    end

    typedef enum logic [1:0] {
        IDLE,
        LOAD,
        CALC_SUM,
        CALC_ENERGY
    } state_t;

    state_t state, next_state;


    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state      <= IDLE;
            sum        <= 0;
            i          <= 0;
            k          <= 0;
            i_total    <= 0;
            mel_done_o <= 0;
        end else begin
            //$display("i: %d, state: %d", i, state);
            state   <= next_state;
            sum     <= sum_next;
            i       <= i_next;
            k       <= k_next;
            i_total <= i_total_next;

            if (i == 40) begin
                state      <= IDLE;
                mel_done_o <= 1;
            end else begin
                mel_done_o <= 0;
            end
        end
    end
           
    assign k_init = mel_memory[i_total][8:0];

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
                mel_valid     = 1'b1;
                sum_next      = 0;
                i_next        = 0;
                i_total_next  = 0;

                if (mel_start_i)
                    next_state = LOAD;
            end

            LOAD: begin
                mel_valid         = 1'b1;
                mel_value_energies = '0;
                mel_prt_energies  = i;

                if (i < NUM_FILTERS) begin
                    k_next      = mel_memory[i_total][8:0];
                    next_state  = CALC_SUM;
                end else begin
                    next_state  = IDLE;
                end
            end

            CALC_SUM: begin
                mel_valid         = 1'b1;
                mel_value_energies = '0;
                mel_prt_energies  = i;

                if (k <= mel_memory[i_total + 1][8:0]) begin
                    temp_mul_next = ((power_spectrum * filter) + (1 << 30));
                    sum_next      = sum + temp_mul_next[62:31];
                    k_next        = k + 1;
                    next_state    = CALC_SUM;
                end else begin
                    next_state    = CALC_ENERGY;
                end
            end

            CALC_ENERGY: begin
                i_next        = i + 1;
                i_total_next  = i_total + 33;
                sum_next      = 0;

                mel_valid        = 1'b1;
                mel_prt_energies = i;

                if (sum <= 0) begin
                    mel_value_energies = 8'h00; // Pode ajustar para saturar em 0
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

    base2log u_base2log (
        .number_i (sum),
        .log_o    (temp_log2)
    );

endmodule
