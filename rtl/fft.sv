`timescale 1ns/1ps

module FFT #(
    parameter NFFT          = 512,
    parameter INPUT_WIDTH   = 16,
    parameter COMPLEX_WIDTH = 32,
    parameter FRAME_SIZE    = 306
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

logic larger_frame;
logic equal_frame;
logic [8:0] frame_ptr_reversal;

initial begin
    $readmemh("tables/twiddles.hex", twiddles);
end


always_ff @(posedge clk or negedge rst_n) begin : BUFFER_INPUT_LOGIC
    if(!rst_n) begin
        x <= '{default: 0};
    end else begin
        if(in_valid) begin
            if(larger_frame) begin
                x[frame_ptr_reversal].re <= {{16{real_in[INPUT_WIDTH - 1]}}, real_in}; // Extensão de sinal
                x[frame_ptr_reversal].im <= 0; // Parte imaginária é zero para entrada real
            end else begin
                x[frame_ptr_i].re <= {{16{real_in[INPUT_WIDTH - 1]}}, real_in}; // Extensão de sinal
                x[frame_ptr_i].im <= 0; // Parte imaginária é zero para entrada real
            end
        end
    end
end

typedef enum logic [3:0] { 
    IDLE,
    STAGE_INIT,
    BUTTERFLY_CALC,
    UPDATE_VALUES,
    NEXT_J,
    NEXT_K,
    NEXT_STAGE,
    CALC_REAL_POWER,
    DONE
} fft_state_t;

fft_state_t fft_state;

logic [NFFT_LOG2: 0] stage;
logic [NFFT_LOG2: 0] k_cnt, j_cnt, half_m;
logic [$clog2(NFFT/2)-1:0] twiddle_index;
logic [NFFT_LOG2:0] m, twiddle_step;

complex twiddle_term, even_term; // t, u

logic [8:0] power_ptr_internal;

always_ff @(posedge clk or negedge rst_n) begin : FFT_CALCULATION_LOGIC
    fft_done_o    <= 0;
    power_valid_o <= 0;

    if (!rst_n) begin
        fft_state     <= IDLE;
        stage         <= 0;
        k_cnt         <= 0;
        j_cnt         <= 0;
        twiddle_index <= 0;
    end else begin
        unique case (fft_state)
            IDLE: begin
                stage         <= 1;
                twiddle_index <= 0;

                if(start_i) begin
                    fft_state <= STAGE_INIT;
                end else begin
                    fft_state <= IDLE;
                end
            end

            STAGE_INIT: begin
                m             <= 1 << stage;
                half_m        <= 1 << (stage - 1);
                k_cnt         <= 0;
                j_cnt         <= 1;
                twiddle_step  <= NFFT >> stage;
                fft_state     <= BUTTERFLY_CALC;
                twiddle_index <= 0;
            end

            BUTTERFLY_CALC: begin
                twiddle_term <= c_mul(twiddles[twiddle_index], x[k_cnt + j_cnt + half_m]);
                even_term <= x[k_cnt + j_cnt];

                fft_state <= UPDATE_VALUES;
            end

            UPDATE_VALUES: begin
                x[k_cnt + j_cnt]          <= c_add(even_term, twiddle_term);
                x[k_cnt + j_cnt + half_m] <= c_sub(even_term, twiddle_term);
                fft_state                 <= NEXT_J;
            end

            NEXT_J: begin
                if (j_cnt < half_m) begin
                    j_cnt         <= j_cnt + 1;
                    twiddle_index <= twiddle_index + twiddle_step;
                    fft_state     <= BUTTERFLY_CALC;
                end else begin
                    twiddle_index <= 0;
                    j_cnt         <= 1;
                    k_cnt         <= k_cnt + m;
                    fft_state     <= NEXT_K;
                end
            end

            NEXT_K: begin
                if (k_cnt < NFFT) begin // k_cnt + m; k_cnt <= k_cnt + m;
                    fft_state <= BUTTERFLY_CALC;
                end else begin
                    k_cnt     <= 0;
                    stage     <= stage + 1;
                    fft_state <= NEXT_STAGE;
                end
            end

            NEXT_STAGE: begin
                if (stage <= NFFT_LOG2) begin
                    fft_state <= STAGE_INIT;
                end else begin
                    power_ptr_internal <= 0;
                    fft_state          <= CALC_REAL_POWER;
                end
            end

            CALC_REAL_POWER: begin
                if(power_ptr_o == RFFT_SIZE) begin
                    fft_state <= DONE;
                end else begin
                    power_ptr_o <= power_ptr_internal;
                    power_ptr_internal <= power_ptr_internal + 1;
                    power_valid_o <= 1;
                    power_sample_o <= {9'h0, c_power(x[power_ptr_internal])[63:41]};
                end
            end

            DONE: begin
                fft_done_o <= 1;
                fft_state <= IDLE;
            end
            default: fft_state <= IDLE;
        endcase
    end
end

assign frame_ptr_reversal = {frame_ptr_i[0], frame_ptr_i[1], frame_ptr_i[2], frame_ptr_i[3], 
    frame_ptr_i[4], frame_ptr_i[5], frame_ptr_i[6], frame_ptr_i[7], frame_ptr_i[8]};
assign larger_frame = (frame_ptr_reversal > frame_ptr_i);
assign equal_frame  = (frame_ptr_reversal == frame_ptr_i);

endmodule