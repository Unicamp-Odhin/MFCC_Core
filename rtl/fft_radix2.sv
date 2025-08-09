`timescale 1ns/1ps

module fft_radix2 #(
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

    function automatic logic [1:0] count_ones_and_mask2bit(input logic [NFFT_LOG2 - 1:0] x);
        integer count = 0;
        for (int i = 0; i < NFFT_LOG2; i++) begin
            count += x[i];
        end
        return count[1:0];  // equivalente a count & 2'b11
    endfunction

    function automatic complex x_read(input logic [NFFT_LOG2-1:0] addr);
        logic [1:0] bank_id;
        begin
            bank_id = count_ones_and_mask2bit(addr);
            case (bank_id)
                2'd0: x_read = x_bank0[addr];
                2'd1: x_read = x_bank1[addr];
                2'd2: x_read = x_bank2[addr];
                2'd3: x_read = x_bank3[addr];
            endcase
        end
    endfunction

    localparam INPUT_DIFF = COMPLEX_WIDTH - INPUT_WIDTH;
    localparam RFFT_SIZE  = NFFT/2;
    localparam NFFT_LOG22  = $clog2(NFFT_LOG2);

    logic parity[NFFT_LOG2 - 1:0];

    complex twiddles[0 : NFFT / 2];

    complex x_bank0 [0 : NFFT - 1];
    complex x_bank1 [0 : NFFT - 1];
    complex x_bank2 [0 : NFFT - 1];
    complex x_bank3 [0 : NFFT - 1];

    logic [NFFT_LOG2 - 1:0] frame_ptr_reversal;

    initial begin
        $readmemh("tables/twiddles.hex", twiddles);
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
        logic [1:0] addr_even_bank;
        logic [1:0] addr_odd_bank;
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
    assign power_ptr_o    = power_ptr_stage4[NFFT_LOG2 - 1:0];
    assign power_sample_o = power_stage4;

    logic [NFFT_LOG2 - 1:0] even_ptr_sum, odd_ptr_sum;

    assign even_ptr_sum = sched.k + sched.j;
    assign odd_ptr_sum  = sched.k + sched.j + sched.half_m;

    // Main control
    always_ff @(posedge clk) begin : FFT_CALCULATION_PIPELINED
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
                    stage1.even <= x_read(even_ptr_sum[NFFT_LOG2 - 1:0]);
                    stage1.odd  <= x_read(odd_ptr_sum[NFFT_LOG2 - 1:0]);

                    stage1.twiddle   <= twiddles[sched.twiddle_index[NFFT_LOG2 - 1:0]];
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
                            if (sched.stage < NFFT_LOG2[NFFT_LOG22:0]) begin
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
                        power_stage1       <= x_read(power_ptr[NFFT_LOG2 - 1:0]);
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
        stage3_addsub.sum.re         <= stage2_mul.even.re + (stage2_mul.arbr - stage2_mul.aibi);
        stage3_addsub.sum.im         <= stage2_mul.even.im + (stage2_mul.arbi + stage2_mul.aibr);
        stage3_addsub.diff.re        <= stage2_mul.even.re - (stage2_mul.arbr - stage2_mul.aibi);
        stage3_addsub.diff.im        <= stage2_mul.even.im - (stage2_mul.arbi + stage2_mul.aibr);
        stage3_addsub.addr_even      <= stage2_mul.addr_even;
        stage3_addsub.addr_odd       <= stage2_mul.addr_odd;
        stage3_addsub.addr_even_bank <= count_ones_and_mask2bit(stage2_mul.addr_even);
        stage3_addsub.addr_odd_bank  <= count_ones_and_mask2bit(stage2_mul.addr_odd);
    end

    logic x0_write_en, x1_write_en, x2_write_en, x3_write_en;
    complex x0_write_data, x1_write_data, x2_write_data, x3_write_data;
    logic [NFFT_LOG2 - 1:0] x0_write_addr, x1_write_addr, x2_write_addr, x3_write_addr;

    // FFT Pipeline Stage 4: Writeback
    always_ff @(posedge clk) begin
        x0_write_en <= 0;
        x1_write_en <= 0;
        x2_write_en <= 0;
        x3_write_en <= 0;

        if(in_valid) begin
            x0_write_addr <= frame_ptr_reversal;
            x1_write_addr <= frame_ptr_reversal;
            x2_write_addr <= frame_ptr_reversal;
            x3_write_addr <= frame_ptr_reversal;
            x0_write_en   <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b00;
            x1_write_en   <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b01;
            x2_write_en   <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b10;
            x3_write_en   <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b11;
            x0_write_data <= {{{INPUT_DIFF{real_in[INPUT_WIDTH - 1]}}}, real_in, 32'h0}; // Extensão de sinal
            x1_write_data <= {{{INPUT_DIFF{real_in[INPUT_WIDTH - 1]}}}, real_in, 32'h0}; // Extensão de sinal
            x2_write_data <= {{{INPUT_DIFF{real_in[INPUT_WIDTH - 1]}}}, real_in, 32'h0}; // Extensão de sinal
            x3_write_data <= {{{INPUT_DIFF{real_in[INPUT_WIDTH - 1]}}}, real_in, 32'h0}; // Extensão de sinal
        end else if(fft_state == PROCESSING) begin
            case (stage3_addsub.addr_even_bank)
                0: begin
                    x0_write_en <= 1;
                    x0_write_addr <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x0_write_data <= stage3_addsub.sum;
                end 
                1: begin
                    x1_write_en <= 1;
                    x1_write_addr <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x1_write_data <= stage3_addsub.sum;
                end 
                2: begin
                    x2_write_en <= 1; 
                    x2_write_addr <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x2_write_data <= stage3_addsub.sum;
                end
                3: begin
                    x3_write_en <= 1;
                    x3_write_addr <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x3_write_data <= stage3_addsub.sum;
                end 
            endcase

            case (stage3_addsub.addr_odd_bank)
                0: begin
                    x0_write_en <= 1;
                    x0_write_addr <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x0_write_data <= stage3_addsub.diff;
                end 
                1: begin
                    x1_write_en <= 1;
                    x1_write_addr <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x1_write_data <= stage3_addsub.diff;
                end 
                2: begin
                    x2_write_en <= 1;
                    x2_write_addr <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x2_write_data <= stage3_addsub.diff;
                end 
                3: begin
                    x3_write_en <= 1;
                    x3_write_addr <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x3_write_data <= stage3_addsub.diff;
                end 
            endcase
        end
    end

    always_ff @(posedge clk) begin
        if(x0_write_en) begin
            x_bank0[x0_write_addr] <= x0_write_data;
        end
        if(x1_write_en) begin
            x_bank1[x1_write_addr] <= x1_write_data;
        end
        if(x2_write_en) begin
            x_bank2[x2_write_addr] <= x2_write_data;
        end
        if(x3_write_en) begin
            x_bank3[x3_write_addr] <= x3_write_data;
        end
    end


    genvar k;
    generate
        for (k = 0; k < NFFT_LOG2; k = k + 1) begin : bit_reverse
            assign frame_ptr_reversal[k] = frame_ptr_i[NFFT_LOG2 - 1 - k];
        end
    endgenerate

endmodule
