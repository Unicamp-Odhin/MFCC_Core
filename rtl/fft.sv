`timescale 1ns/1ps

module FFT #(
    parameter NFFT          = 512,
    parameter INPUT_WIDTH   = 16,
    parameter COMPLEX_WIDTH = 32
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [8:0] frame_ptr_i,
    input  logic [INPUT_WIDTH - 1:0] real_in,

    input  logic start_i,

    output logic fft_done_o,

    output logic power_valid_o,
    output logic [8:0] power_ptr_o,
    output logic [COMPLEX_WIDTH - 1: 0] power_sample_o
);

import complex_pkg::*;

localparam NFFT_LOG2 = $clog2(NFFT);
localparam RFFT_SIZE = NFFT/2;

complex x[NFFT];
complex twiddles[NFFT / 2];

logic [8:0] frame_ptr_reversal;

initial begin
    $readmemh("tables/twiddles.hex", twiddles);
end

always_ff @(posedge clk) begin : BUFFER_INPUT_LOGIC
    if(in_valid) begin
        x[frame_ptr_reversal].re <= {{16{real_in[INPUT_WIDTH - 1]}}, real_in}; // Extensão de sinal
        x[frame_ptr_reversal].im <= 0; // Parte imaginária é zero para entrada real
    end
end

typedef enum logic [3:0] {
    IDLE,
    PROCESSING,
    CALC_REAL_POWER,
    DONE
} fft_state_t;

typedef struct packed {
    logic [9:0] k;
    logic [9:0] j;
    logic [4:0] stage;
    logic [9:0] m;
    logic [9:0] half_m;
    logic [9:0] twiddle_index;
    logic [9:0] twiddle_step;
} butterfly_task_t;

typedef struct packed {
    complex even;
    complex odd;
    complex twiddle;
    butterfly_task_t meta;
} pipeline_stage_1_t;

typedef struct packed {
    complex sum;
    complex diff;
    logic [9:0] addr_even;
    logic [9:0] addr_odd;
} pipeline_stage_2_t;

// Registers
fft_state_t fft_state;
butterfly_task_t sched;

pipeline_stage_1_t stage1;
pipeline_stage_2_t stage2;

// Power calculation pipeline
complex          power_stage1;
logic   [63:0]   power_stage2;
logic   [31:0]   power_stage3;
logic            power_valid_stage1;
logic            power_valid_stage2;
logic            power_valid_stage3;
logic   [9:0]    power_ptr_stage1;
logic   [9:0]    power_ptr_stage2;
logic   [9:0]    power_ptr_stage3;

// Outputs
assign power_valid_o  = power_valid_stage3;
assign power_ptr_o    = power_ptr_stage3;
assign power_sample_o = power_stage3;

// Main sequential block
always_ff @(posedge clk or negedge rst_n) begin : FFT_CALCULATION_PIPELINED
    if (!rst_n) begin
        fft_state           <= IDLE;
        sched.stage         <= 1;
        sched.k             <= 0;
        sched.j             <= 0;
        sched.m             <= 2;
        sched.half_m        <= 1;
        sched.twiddle_index <= 0;
        sched.twiddle_step  <= NFFT >> 1;
        fft_done_o          <= 0;

        power_ptr_stage1    <= 0;
        power_ptr_stage2    <= 0;
        power_ptr_stage3    <= 0;
        power_valid_stage1  <= 0;
        power_valid_stage2  <= 0;
        power_valid_stage3  <= 0;
        power_stage3        <= 0;
    end else begin
        fft_done_o <= 0;

        case (fft_state)
            IDLE: begin
                if (start_i) begin
                    fft_state           <= PROCESSING;
                    sched.stage         <= 1;
                    sched.k             <= 0;
                    sched.j             <= 0;
                    sched.m             <= 2;
                    sched.half_m        <= 1;
                    sched.twiddle_index <= 0;
                    sched.twiddle_step  <= NFFT >> 1;

                    power_ptr_stage1    <= 0;
                end
            end

            PROCESSING: begin
                // Stage 0 - Scheduler
                stage1.even      <= x[sched.k + sched.j];
                stage1.odd       <= x[sched.k + sched.j + sched.half_m];
                stage1.twiddle   <= twiddles[sched.twiddle_index];
                stage1.meta      <= sched;

                // Update scheduler
                if (sched.j < sched.half_m - 1) begin
                    sched.j             <= sched.j + 1;
                    sched.twiddle_index <= sched.twiddle_index + sched.twiddle_step;
                end else begin
                    sched.j             <= 0;
                    sched.twiddle_index <= 0;
                    if (sched.k < NFFT - sched.m) begin
                        sched.k <= sched.k + sched.m;
                    end else begin
                        sched.k <= 0;
                        if (sched.stage < NFFT_LOG2) begin
                            sched.stage        <= sched.stage + 1;
                            sched.m            <= 1 << (sched.stage + 1);
                            sched.half_m       <= 1 << sched.stage;
                            sched.twiddle_step <= NFFT >> (sched.stage + 1);
                        end else begin
                            fft_state          <= CALC_REAL_POWER;
                            power_ptr_stage1   <= 0;
                        end
                    end
                end
            end

            CALC_REAL_POWER: begin
                if (power_ptr_stage3 == RFFT_SIZE) begin
                    fft_state          <= DONE;
                end else begin
                    // Stage 1
                    power_stage1       <= x[power_ptr_stage1];
                    power_ptr_stage1   <= power_ptr_stage1 + 1;
                    power_valid_stage1 <= 1;

                    // Stage 2
                    power_stage2       <= c_power(power_stage1);
                    power_ptr_stage2   <= power_ptr_stage1;
                    power_valid_stage2 <= power_valid_stage1;

                    // Stage 3
                    power_stage3       <= power_stage2[40:9];
                    power_ptr_stage3   <= power_ptr_stage2;
                    power_valid_stage3 <= power_valid_stage2;
                end
            end

            DONE: begin
                fft_done_o         <= 1;
                power_valid_stage1 <= 0;
                power_valid_stage2 <= 0;
                power_valid_stage3 <= 0;
                fft_state          <= IDLE;
            end

            default: fft_state <= IDLE;
        endcase
    end
end

// FFT butterfly execution stage
always_ff @(posedge clk) begin
    complex twiddle_term;
    twiddle_term        = c_mul(stage1.twiddle, stage1.odd);
    stage2.sum          <= c_add(stage1.even, twiddle_term);
    stage2.diff         <= c_sub(stage1.even, twiddle_term);
    stage2.addr_even    <= stage1.meta.k + stage1.meta.j;
    stage2.addr_odd     <= stage1.meta.k + stage1.meta.j + stage1.meta.half_m;
end

// FFT butterfly writeback stage
always_ff @(posedge clk) begin
    x[stage2.addr_even] <= stage2.sum;
    x[stage2.addr_odd]  <= stage2.diff;
end

assign frame_ptr_reversal = {frame_ptr_i[0], frame_ptr_i[1], frame_ptr_i[2], frame_ptr_i[3], 
    frame_ptr_i[4], frame_ptr_i[5], frame_ptr_i[6], frame_ptr_i[7], frame_ptr_i[8]};

endmodule