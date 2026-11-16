`timescale 1ns/1ps

module fft_radix2 #(
    parameter NFFT = 512,
    parameter WIDTH = 64,
    parameter F = 16,
    parameter NFFT_LOG2 = $clog2(NFFT)
) (
    input logic clk,
    input logic rst_n,

    input logic in_valid,
    input logic [NFFT_LOG2-1:0] frame_ptr_i,
    input logic [WIDTH-1:0] frame_sample_i,

    input logic start_i,

    output logic fft_done_o,

    output logic power_valid_o,
    output logic [NFFT_LOG2-1:0] power_ptr_o,
    output logic [WIDTH-1: 0] power_sample_o 
);

    /*
    stage1: leitura de operandos e agendamento
    stage2_mul: multiplicação complexa (c_mul)
    stage3_addsub: soma e subtração complexas (c_add, c_sub)
    writeback: escrita nos registradores x[]
    */
    localparam COMPLEX_WIDTH = WIDTH; // TODO: Voltar aqui pois pode ser menor, o mínimo necessário é WIDTH + log2(NFFT)

    import complex_pkg::*;

    function automatic logic [1:0] count_ones_and_mask2bit(
        input logic [NFFT_LOG2-1:0] x
    );
        logic [1:0] count;
        begin
            count = 2'b00;
            for (int i = 0; i < NFFT_LOG2; i++) begin
                count = count + x[i];
            end
            return count;
        end
    endfunction


    long_complex x_bank0 [0:NFFT-1];
    long_complex x_bank1 [0:NFFT-1];
    long_complex x_bank2 [0:NFFT-1];
    long_complex x_bank3 [0:NFFT-1];
    
    function automatic long_complex x_read(input logic [NFFT_LOG2-1:0] addr);
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

    //localparam WIDTH_DIFF = COMPLEX_WIDTH - WIDTH;
    localparam RFFT_SIZE = NFFT/2;
    localparam NFFT_LOG22 = $clog2(NFFT_LOG2);

    logic parity[NFFT_LOG2 - 1:0];

    logic [NFFT_LOG2-1:0] frame_ptr_reversal;

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
        long_complex even;
        long_complex odd;
        long_complex twiddle;
        butterfly_task_t meta;
    } pipeline_stage_1_t;

    typedef struct packed {
        logic signed [COMPLEX_WIDTH-1:0] arbr; // a.re * b.re
        logic signed [COMPLEX_WIDTH-1:0] aibi; // a.im * b.im
        logic signed [COMPLEX_WIDTH-1:0] arbi; // a.re * b.im
        logic signed [COMPLEX_WIDTH-1:0] aibr; // a.im * b.re
        long_complex even;
        logic [NFFT_LOG2:0] addr_even;
        logic [NFFT_LOG2:0] addr_odd;
    } pipeline_stage_mul_t;

    typedef struct packed {
        long_complex sum;
        long_complex diff;
        logic [NFFT_LOG2:0] addr_even;
        logic [NFFT_LOG2:0] addr_odd;
        logic [1:0] addr_even_bank;
        logic [1:0] addr_odd_bank;
    } pipeline_stage_2_t;

    // Registers
    fft_state_t fft_state;
    butterfly_task_t sched;

    pipeline_stage_1_t stage1;
    pipeline_stage_mul_t stage2_mul;
    pipeline_stage_2_t stage3_addsub;

    // Power calculation pipeline
    long_complex power_stage1;
    logic [WIDTH-1:0] power_stage2_re, stage1_mult_re, stage1_mult_im;
    logic [WIDTH-1:0] power_stage2_im;
    logic [WIDTH-1:0] power_stage3;


    logic power_valid_stage1;
    logic power_valid_stage2;
    logic power_valid_stage3;

    logic [NFFT_LOG2-1:0] power_ptr_stage1;
    logic [NFFT_LOG2-1:0] power_ptr_stage2;
    logic [NFFT_LOG2-1:0] power_ptr_stage3;
    logic [NFFT_LOG2-1:0] power_ptr;

    long_mul_fixed #(.F(F)) u_mul_stage1_re (
        .a (power_stage1.re[WIDTH-1:0]),
        .b (power_stage1.re[WIDTH-1:0]),
        .result (stage1_mult_re)
    );

    long_mul_fixed #(.F(F)) u_mul_stage1_im (
        .a (power_stage1.im[WIDTH-1:0]),
        .b (power_stage1.im[WIDTH-1:0]),
        .result (stage1_mult_im)
    );
        
    logic [NFFT_LOG2 - 1:0] even_ptr_sum, odd_ptr_sum;

    assign even_ptr_sum = sched.k + sched.j;
    assign odd_ptr_sum = sched.k + sched.j + sched.half_m;

    logic [7:0] twiddle_address;
    logic [127:0] twiddle_value;

    assign twiddle_address = sched.twiddle_index[NFFT_LOG2:0];

    twiddles_rom u_twiddles (
        .addr (twiddle_address),
        .dout (twiddle_value)
    );

    // Main control
    always_ff @(posedge clk) begin : FFT_CALCULATION_PIPELINED
        if (!rst_n) begin
            fft_state <= IDLE;
            sched.stage <= 1;
            sched.k <= 0;
            sched.j <= 0;
            sched.m <= 2;
            sched.half_m <= 1;
            sched.twiddle_index <= 0;
            sched.twiddle_step <= NFFT >> 1;
            fft_done_o <= 0;

            power_ptr <= 0;
            power_ptr_stage1 <= 0;
            power_ptr_stage2 <= 0;
            power_ptr_stage3 <= 0;
            power_ptr_o <= 0;
            power_valid_stage1 <= 0;
            power_valid_stage2 <= 0;
            power_valid_stage3 <= 0;
            power_valid_o <= 0;
            power_stage3 <= 0;
        end else begin
            fft_done_o <= 0;

            case (fft_state)
                IDLE: begin
                    if (start_i) begin
                        fft_state <= PROCESSING;
                        sched.stage <= 1;
                        sched.k <= 0;
                        sched.j <= 0;
                        sched.m <= 2;
                        sched.half_m <= 1;
                        sched.twiddle_index <= 0;
                        sched.twiddle_step <= NFFT >> 1;
                        power_ptr <= 0;
                    end
                end

                PROCESSING: begin
                    // Pipeline Stage 1: Read and schedule
                    stage1.even <= x_read(even_ptr_sum[NFFT_LOG2-1:0]);
                    stage1.odd <= x_read(odd_ptr_sum[NFFT_LOG2-1:0]);


                    // stage1.twiddle <= twiddles[sched.twiddle_index[NFFT_LOG2:0]];

                    stage1.twiddle <= {twiddle_value[127:64], twiddle_value[63:0]};
                    stage1.meta <= sched;

                    // Scheduler update
                    if (sched.j < sched.half_m - 1) begin
                        sched.j <= sched.j + 1;
                        sched.twiddle_index <= sched.twiddle_index + sched.twiddle_step;
                    end else begin
                        sched.j <= 0;
                        sched.twiddle_index <= 0;
                        if (sched.k < NFFT - sched.m) begin
                            sched.k <= sched.k + sched.m;
                        end else begin
                            sched.k <= 0;
                            if (sched.stage < NFFT_LOG2[NFFT_LOG22:0]) begin
                                sched.stage <= sched.stage + 1;
                                sched.m <= 1 << (sched.stage + 1);
                                sched.half_m <= 1 << sched.stage;
                                sched.twiddle_step <= NFFT >> (sched.stage + 1);
                            end else begin
                                fft_state <= CALC_REAL_POWER;
                                power_ptr <= 0;
                            end
                        end
                    end
                end

                CALC_REAL_POWER: begin
                    if (power_ptr_o == RFFT_SIZE) begin
                        fft_state <= DONE;
                    end else begin
                        // Power pipeline Stage 1
                        power_ptr <= power_ptr + 1;
                        power_stage1 <= x_read(power_ptr);
                        power_ptr_stage1 <= power_ptr;
                        power_valid_stage1 <= 1;

                        // Power pipeline Stage 2
                        power_stage2_re <= stage1_mult_re;
                        power_stage2_im <= stage1_mult_im;

                        power_ptr_stage2 <= power_ptr_stage1;
                        power_valid_stage2 <= power_valid_stage1;

                        // Power pipeline Stage 3
                        power_stage3 <= power_stage2_re + power_stage2_im;
                        power_ptr_stage3 <= power_ptr_stage2;
                        power_valid_stage3 <= power_valid_stage2;

                        // Power pipeline Stage 4
                        power_sample_o <= power_stage3 >> NFFT_LOG2; //Dividir por NFFT
                        power_ptr_o <= power_ptr_stage3;
                        power_valid_o <= power_valid_stage3;
                    end
                end

                DONE: begin
                    fft_done_o <= 1;
                    power_ptr <= 0;
                    power_ptr_o <= 0;
                    power_valid_stage1 <= 0;
                    power_valid_stage2 <= 0;
                    power_valid_stage3 <= 0;
                    power_valid_o <= 0;
                    fft_state <= IDLE;
                end

                default: fft_state <= IDLE;
            endcase
        end
    end


    logic signed [COMPLEX_WIDTH-1:0] arbr_result;
    logic signed [COMPLEX_WIDTH-1:0] aibi_result;
    logic signed [COMPLEX_WIDTH-1:0] arbi_result;
    logic signed [COMPLEX_WIDTH-1:0] aibr_result;

    long_mul_fixed #(.F(F)) u_mul_arbr (
        .a (stage1.twiddle.re),
        .b (stage1.odd.re),
        .result (arbr_result)
    );

    long_mul_fixed #(.F(F)) u_mul_aibi (
        .a (stage1.twiddle.im),
        .b (stage1.odd.im),
        .result (aibi_result)
    );

    long_mul_fixed #(.F(F)) u_mul_arbi (
        .a (stage1.twiddle.re),
        .b (stage1.odd.im),
        .result (arbi_result)
    );

    long_mul_fixed #(.F(F)) u_mul_aibr (
        .a (stage1.twiddle.im),
        .b (stage1.odd.re),
        .result (aibr_result)
    );


    // FFT Pipeline Stage 2: c_mul only
    always_ff @(posedge clk) begin
        stage2_mul.arbr <= arbr_result;
        stage2_mul.aibi <= aibi_result;
        stage2_mul.arbi <= arbi_result;
        stage2_mul.aibr <= aibr_result;

        stage2_mul.even <= stage1.even;

        stage2_mul.addr_even <= stage1.meta.k + stage1.meta.j;

        stage2_mul.addr_odd <= stage1.meta.k + stage1.meta.j + stage1.meta.half_m;
    end


    // FFT Pipeline Stage 3: c_add and c_sub
    always_ff @(posedge clk) begin
        //x[k + j] = u + (t)
        stage3_addsub.sum.re <= stage2_mul.even.re + (stage2_mul.arbr - stage2_mul.aibi);
        stage3_addsub.sum.im <= stage2_mul.even.im + (stage2_mul.arbi + stage2_mul.aibr);

        //x[k + j + half_m] = u - (t)
        stage3_addsub.diff.re <= stage2_mul.even.re - (stage2_mul.arbr - stage2_mul.aibi);
        stage3_addsub.diff.im <= stage2_mul.even.im - (stage2_mul.arbi + stage2_mul.aibr);

        stage3_addsub.addr_even <= stage2_mul.addr_even;
        stage3_addsub.addr_odd <= stage2_mul.addr_odd;

        stage3_addsub.addr_even_bank <= count_ones_and_mask2bit(stage2_mul.addr_even);
        stage3_addsub.addr_odd_bank <= count_ones_and_mask2bit(stage2_mul.addr_odd);
    end

    logic [NFFT_LOG2-1:0] x0_write_addr, x1_write_addr, x2_write_addr, x3_write_addr;
    logic x0_write_en, x1_write_en, x2_write_en, x3_write_en;
    long_complex x0_write_data, x1_write_data, x2_write_data, x3_write_data;
    logic [NFFT_LOG2-1:0] x0_write_addr_even, x1_write_addr_even, x2_write_addr_even, x3_write_addr_even;
    logic x0_write_en_even, x1_write_en_even, x2_write_en_even, x3_write_en_even;
    long_complex x0_write_data_even, x1_write_data_even, x2_write_data_even, x3_write_data_even;
    logic [NFFT_LOG2-1:0] x0_write_addr_odd, x1_write_addr_odd, x2_write_addr_odd, x3_write_addr_odd;
    logic x0_write_en_odd, x1_write_en_odd, x2_write_en_odd, x3_write_en_odd;
    long_complex x0_write_data_odd, x1_write_data_odd, x2_write_data_odd, x3_write_data_odd;
    logic [NFFT_LOG2-1:0] x0_write_addr_idle, x1_write_addr_idle, x2_write_addr_idle, x3_write_addr_idle;
    logic x0_write_en_idle, x1_write_en_idle, x2_write_en_idle, x3_write_en_idle;
    long_complex x0_write_data_idle, x1_write_data_idle, x2_write_data_idle, x3_write_data_idle;


    logic [2:0] wb_valid_pipe;

    always_ff @(posedge clk) begin
        if (!rst_n)
            wb_valid_pipe <= 3'b0;
        else
            wb_valid_pipe <= {wb_valid_pipe[1:0], (fft_state == PROCESSING)};
    end

    // FFT Pipeline Stage 4: Writeback
    always_ff @(posedge clk) begin
        x0_write_en_odd <= '0;
        x1_write_en_odd <= '0;
        x2_write_en_odd <= '0;
        x3_write_en_odd <= '0;

        x0_write_addr_odd <= '0;
        x1_write_addr_odd <= '0;
        x2_write_addr_odd <= '0;
        x3_write_addr_odd <= '0;

        x0_write_data_odd <= '0;
        x1_write_data_odd <= '0;
        x2_write_data_odd <= '0;
        x3_write_data_odd <= '0;

        if ((fft_state == PROCESSING && wb_valid_pipe[2]) || (fft_state == CALC_REAL_POWER && power_ptr < 3)) begin 
            case (stage3_addsub.addr_odd_bank)
                0: begin
                    x0_write_en_odd <= 1;
                    x0_write_addr_odd <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x0_write_data_odd <= stage3_addsub.diff;
                end 
                1: begin
                    x1_write_en_odd <= 1;
                    x1_write_addr_odd <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x1_write_data_odd <= stage3_addsub.diff;
                end 
                2: begin
                    x2_write_en_odd <= 1;
                    x2_write_addr_odd <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x2_write_data_odd <= stage3_addsub.diff;
                end 
                3: begin
                    x3_write_en_odd <= 1;
                    x3_write_addr_odd <= stage3_addsub.addr_odd[NFFT_LOG2 - 1:0];
                    x3_write_data_odd <= stage3_addsub.diff;
                end 
            endcase
        end
    end

    always_ff @(posedge clk) begin
        x0_write_en_even <= '0;
        x1_write_en_even <= '0;
        x2_write_en_even <= '0;
        x3_write_en_even <= '0;

        x0_write_addr_even <= '0;
        x1_write_addr_even <= '0;
        x2_write_addr_even <= '0;
        x3_write_addr_even <= '0;

        x0_write_data_even <= '0;
        x1_write_data_even <= '0;
        x2_write_data_even <= '0;
        x3_write_data_even <= '0;

        if ((fft_state == PROCESSING && wb_valid_pipe[2]) || (fft_state == CALC_REAL_POWER && power_ptr < 3)) begin 
            case (stage3_addsub.addr_even_bank)
                0: begin
                    x0_write_en_even <= 1;
                    x0_write_addr_even <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x0_write_data_even <= stage3_addsub.sum;
                end 
                1: begin
                    x1_write_en_even <= 1;
                    x1_write_addr_even <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x1_write_data_even <= stage3_addsub.sum;
                end 
                2: begin
                    x2_write_en_even <= 1;
                    x2_write_addr_even <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x2_write_data_even <= stage3_addsub.sum;
                end 
                3: begin
                    x3_write_en_even <= 1;
                    x3_write_addr_even <= stage3_addsub.addr_even[NFFT_LOG2 - 1:0];
                    x3_write_data_even <= stage3_addsub.sum;
                end 
            endcase
        end
    end

    always_ff @(posedge clk) begin
        x0_write_en_idle <= '0;
        x1_write_en_idle <= '0;
        x2_write_en_idle <= '0;
        x3_write_en_idle <= '0;

        x0_write_addr_idle <= '0;
        x1_write_addr_idle <= '0;
        x2_write_addr_idle <= '0;
        x3_write_addr_idle <= '0;

        x0_write_data_idle <= '0;
        x1_write_data_idle <= '0;
        x2_write_data_idle <= '0;
        x3_write_data_idle <= '0;

        if(in_valid && fft_state == IDLE ) begin
            x0_write_addr_idle <= frame_ptr_reversal;
            x1_write_addr_idle <= frame_ptr_reversal;
            x2_write_addr_idle <= frame_ptr_reversal;
            x3_write_addr_idle <= frame_ptr_reversal;

            x0_write_en_idle <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b00;
            x1_write_en_idle <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b01;
            x2_write_en_idle <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b10;
            x3_write_en_idle <= count_ones_and_mask2bit(frame_ptr_reversal) == 2'b11;
            
            x0_write_data_idle <= {frame_sample_i, COMPLEX_WIDTH'(0)};
            x1_write_data_idle <= {frame_sample_i, COMPLEX_WIDTH'(0)};
            x2_write_data_idle <= {frame_sample_i, COMPLEX_WIDTH'(0)};
            x3_write_data_idle <= {frame_sample_i, COMPLEX_WIDTH'(0)};
        end
    end

    assign x0_write_addr = (fft_state == IDLE ) ? x0_write_addr_idle : (x0_write_addr_even | x0_write_addr_odd);
    assign x1_write_addr = (fft_state == IDLE ) ? x1_write_addr_idle : (x1_write_addr_even | x1_write_addr_odd);
    assign x2_write_addr = (fft_state == IDLE ) ? x2_write_addr_idle : (x2_write_addr_even | x2_write_addr_odd);
    assign x3_write_addr = (fft_state == IDLE ) ? x3_write_addr_idle : (x3_write_addr_even | x3_write_addr_odd);

    assign x0_write_en = (fft_state == IDLE ) ? x0_write_en_idle : (x0_write_en_even | x0_write_en_odd);
    assign x1_write_en = (fft_state == IDLE ) ? x1_write_en_idle : (x1_write_en_even | x1_write_en_odd);
    assign x2_write_en = (fft_state == IDLE ) ? x2_write_en_idle : (x2_write_en_even | x2_write_en_odd);
    assign x3_write_en = (fft_state == IDLE ) ? x3_write_en_idle : (x3_write_en_even | x3_write_en_odd);
    
    assign x0_write_data = (fft_state == IDLE ) ? x0_write_data_idle : (x0_write_data_even | x0_write_data_odd);
    assign x1_write_data = (fft_state == IDLE ) ? x1_write_data_idle : (x1_write_data_even | x1_write_data_odd);
    assign x2_write_data = (fft_state == IDLE ) ? x2_write_data_idle : (x2_write_data_even | x2_write_data_odd);
    assign x3_write_data = (fft_state == IDLE ) ? x3_write_data_idle : (x3_write_data_even | x3_write_data_odd);
    
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
