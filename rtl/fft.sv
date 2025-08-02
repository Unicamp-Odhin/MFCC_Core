`timescale 1ns/1ps

module FFT #(
    parameter NFFT          = 512,
    parameter INPUT_WIDTH   = 16,
    parameter NFFT_LOG2     = $clog2(NFFT),
    parameter COMPLEX_WIDTH = 32
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [NFFT_LOG2 - 1:0]    frame_ptr_i,
    input  logic [INPUT_WIDTH - 1:0] real_in,

    input  logic start_i,

    output logic fft_done_o,

    output logic power_valid_o,
    output logic [NFFT_LOG2 - 1:0]      power_ptr_o,
    output logic [COMPLEX_WIDTH - 1: 0] power_sample_o
);

/*
stage1: leitura de operandos e agendamento
stage2_mul: multiplicação complexa (c_mul)
stage3_addsub: soma e subtração complexas (c_add, c_sub)
writeback: escrita nos registradores x[]
*/

import complex_pkg::*;

localparam INPUT_DIFF = COMPLEX_WIDTH - INPUT_WIDTH;
localparam RFFT_SIZE  = NFFT/2;
localparam NFFT_LOG22  = $clog2(NFFT_LOG2);

complex x[0 : NFFT - 1];
complex twiddles[0 : NFFT / 2];

logic [NFFT_LOG2 - 1:0] frame_ptr_reversal;

initial begin
    $readmemh("tables/twiddles.hex", twiddles);
end

always_ff @(posedge clk) begin : BUFFER_INPUT_LOGIC
    if(in_valid) begin
        x[frame_ptr_reversal].re <= {{INPUT_DIFF{real_in[INPUT_WIDTH - 1]}}, real_in}; // Extensão de sinal
        x[frame_ptr_reversal].im <= 0; // Parte imaginária é zero para entrada real
    end
end
typedef enum logic [1:0] {
    IDLE,
    PROCESSING,
    CALC_REAL_POWER,
    DONE
} fft_state_t;

typedef struct packed {
    logic [NFFT_LOG2:0] k;
    logic [NFFT_LOG2:0] j;
    logic [NFFT_LOG22:0] stage;
    logic [NFFT_LOG2:0] m;
    logic [NFFT_LOG2:0] half_m;
    logic [NFFT_LOG2:0] twiddle_index;
    logic [NFFT_LOG2:0] twiddle_step;
} butterfly_task_t;

typedef struct packed {
    complex even;
    complex odd;
    complex twiddle;
    butterfly_task_t meta;
} pipeline_stage_1_t;

typedef struct packed {
    logic signed [COMPLEX_WIDTH - 1:0] arbr; // a.re * b.re
    logic signed [COMPLEX_WIDTH - 1:0] aibi; // a.im * b.im
    logic signed [COMPLEX_WIDTH - 1:0] arbi; // a.re * b.im
    logic signed [COMPLEX_WIDTH - 1:0] aibr; // a.im * b.re
    complex even;
    logic [NFFT_LOG2:0] addr_even;
    logic [NFFT_LOG2:0] addr_odd;
} pipeline_stage_mul_t;

typedef struct packed {
    complex sum;
    complex diff;
    logic [NFFT_LOG2:0] addr_even;
    logic [NFFT_LOG2:0] addr_odd;
} pipeline_stage_2_t;

// Registers
fft_state_t fft_state;
butterfly_task_t sched;

pipeline_stage_1_t  stage1;
pipeline_stage_mul_t stage2_mul;
pipeline_stage_2_t  stage3_addsub;

// Power calculation pipeline
complex                         power_stage1;
logic [COMPLEX_WIDTH * 2 - 1:0] power_stage2_re;
logic [COMPLEX_WIDTH * 2 - 1:0] power_stage2_im;
logic [COMPLEX_WIDTH * 2 - 1:0] power_stage3;
logic [COMPLEX_WIDTH - 1:0]     power_stage4;
logic                           power_valid_stage1;
logic                           power_valid_stage2;
logic                           power_valid_stage3;
logic                           power_valid_stage4;
logic [NFFT_LOG2:0]             power_ptr_stage1;
logic [NFFT_LOG2:0]             power_ptr_stage2;
logic [NFFT_LOG2:0]             power_ptr_stage3;
logic [NFFT_LOG2:0]             power_ptr_stage4;
logic [NFFT_LOG2:0]             power_ptr;

// Outputs
assign power_valid_o  = power_valid_stage4;
assign power_ptr_o    = power_ptr_stage4;
assign power_sample_o = power_stage4;

// Main control
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

        power_ptr           <= 0;
        power_ptr_stage1    <= 0;
        power_ptr_stage2    <= 0;
        power_ptr_stage3    <= 0;
        power_ptr_stage4    <= 0;
        power_valid_stage1  <= 0;
        power_valid_stage2  <= 0;
        power_valid_stage3  <= 0;
        power_valid_stage4  <= 0;
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
                    power_ptr           <= 0;
                end
            end

            PROCESSING: begin
                // Pipeline Stage 1: Read and schedule
                stage1.even      <= x[sched.k + sched.j];
                stage1.odd       <= x[sched.k + sched.j + sched.half_m];
                stage1.twiddle   <= twiddles[sched.twiddle_index];
                stage1.meta      <= sched;

                // Scheduler update
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
                            fft_state <= CALC_REAL_POWER;
                            power_ptr <= 0;
                        end
                    end
                end
            end

            CALC_REAL_POWER: begin
                if (power_ptr_stage4 == RFFT_SIZE) begin
                    fft_state <= DONE;
                end else begin
                    // Power pipeline Stage 1
                    power_ptr          <= power_ptr + 1;
                    power_stage1       <= x[power_ptr];
                    power_ptr_stage1   <= power_ptr;
                    power_valid_stage1 <= 1;

                    // Power pipeline Stage 2
                    power_stage2_re    <= pow2(power_stage1.re);
                    power_stage2_im    <= pow2(power_stage1.im);
                    power_ptr_stage2   <= power_ptr_stage1;
                    power_valid_stage2 <= power_valid_stage1;

                    // Power pipeline Stage 3
                    power_stage3       <= power_stage2_re + power_stage2_im;
                    power_ptr_stage3   <= power_ptr_stage2;
                    power_valid_stage3 <= power_valid_stage2;

                    // Power pipeline Stage 4
                    power_stage4       <= power_stage3[COMPLEX_WIDTH - 1 + NFFT_LOG2:NFFT_LOG2];
                    power_ptr_stage4   <= power_ptr_stage3;
                    power_valid_stage4 <= power_valid_stage3;
                end
            end

            DONE: begin
                fft_done_o         <= 1;
                power_ptr          <= 0;
                power_valid_stage1 <= 0;
                power_valid_stage2 <= 0;
                power_valid_stage3 <= 0;
                power_valid_stage4 <= 0;
                fft_state          <= IDLE;
            end

            default: fft_state <= IDLE;
        endcase
    end
end

// FFT Pipeline Stage 2: c_mul only
always_ff @(posedge clk) begin
    stage2_mul.arbr      <= mul_fixed(stage1.twiddle.re, stage1.odd.re);
    stage2_mul.aibi      <= mul_fixed(stage1.twiddle.im, stage1.odd.im);
    stage2_mul.arbi      <= mul_fixed(stage1.twiddle.re, stage1.odd.im);
    stage2_mul.aibr      <= mul_fixed(stage1.twiddle.im, stage1.odd.re);
    stage2_mul.even      <= stage1.even;
    stage2_mul.addr_even <= stage1.meta.k + stage1.meta.j;
    stage2_mul.addr_odd  <= stage1.meta.k + stage1.meta.j + stage1.meta.half_m;
end

// FFT Pipeline Stage 3: c_add and c_sub
always_ff @(posedge clk) begin
    stage3_addsub.sum.re    <= stage2_mul.even.re + (stage2_mul.arbr - stage2_mul.aibi);
    stage3_addsub.sum.im    <= stage2_mul.even.im + (stage2_mul.arbi + stage2_mul.aibr);
    stage3_addsub.diff.re   <= stage2_mul.even.re - (stage2_mul.arbr - stage2_mul.aibi);
    stage3_addsub.diff.im   <= stage2_mul.even.im - (stage2_mul.arbi + stage2_mul.aibr);
    stage3_addsub.addr_even <= stage2_mul.addr_even;
    stage3_addsub.addr_odd  <= stage2_mul.addr_odd;
end

// FFT Pipeline Stage 4: Writeback
always_ff @(posedge clk) begin
    x[stage3_addsub.addr_even] <= stage3_addsub.sum;
    x[stage3_addsub.addr_odd]  <= stage3_addsub.diff;
end

genvar k;
generate
    for (k = 0; k < NFFT_LOG2; k = k + 1) begin : bit_reverse
        assign frame_ptr_reversal[k] = frame_ptr_i[NFFT_LOG2 - 1 - k];
    end
endgenerate

endmodule
