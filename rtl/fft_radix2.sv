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
    output logic [WIDTH-1:0] power_sample_o 
);

    /*
    stage1: leitura de operandos e agendamento
    stage2_mul: multiplicação complexa (c_mul)
    stage3_addsub: soma e subtração complexas (c_add, c_sub)
    writeback: escrita nos registradores x[]
    */

    localparam COMPLEX_WIDTH = WIDTH;

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

    // SRAM banks
    logic x0_mem_we, x1_mem_we, x2_mem_we, x3_mem_we;
    logic [NFFT_LOG2-1:0] x0_mem_waddr, x1_mem_waddr, x2_mem_waddr, x3_mem_waddr;
    long_complex x0_mem_wdata, x1_mem_wdata, x2_mem_wdata, x3_mem_wdata;

    logic x0_mem_re, x1_mem_re, x2_mem_re, x3_mem_re;
    logic [NFFT_LOG2-1:0] x0_mem_raddr, x1_mem_raddr, x2_mem_raddr, x3_mem_raddr;
    long_complex x0_mem_rdata, x1_mem_rdata, x2_mem_rdata, x3_mem_rdata;

    localparam MEM_WIDTH = $bits(long_complex);

    sram_1r1w #(
        .DEPTH (NFFT),
        .WIDTH (MEM_WIDTH),
        .ADDR_W(NFFT_LOG2)
    ) u_x_bank0 (
        .clk  (clk),
        .we   (x0_mem_we),
        .waddr(x0_mem_waddr),
        .wdata(x0_mem_wdata),
        .re   (x0_mem_re),
        .raddr(x0_mem_raddr),
        .rdata(x0_mem_rdata)
    );

    sram_1r1w #(
        .DEPTH (NFFT),
        .WIDTH (MEM_WIDTH),
        .ADDR_W(NFFT_LOG2)
    ) u_x_bank1 (
        .clk  (clk),
        .we   (x1_mem_we),
        .waddr(x1_mem_waddr),
        .wdata(x1_mem_wdata),
        .re   (x1_mem_re),
        .raddr(x1_mem_raddr),
        .rdata(x1_mem_rdata)
    );

    sram_1r1w #(
        .DEPTH (NFFT),
        .WIDTH (MEM_WIDTH),
        .ADDR_W(NFFT_LOG2)
    ) u_x_bank2 (
        .clk  (clk),
        .we   (x2_mem_we),
        .waddr(x2_mem_waddr),
        .wdata(x2_mem_wdata),
        .re   (x2_mem_re),
        .raddr(x2_mem_raddr),
        .rdata(x2_mem_rdata)
    );

    sram_1r1w #(
        .DEPTH (NFFT),
        .WIDTH (MEM_WIDTH),
        .ADDR_W(NFFT_LOG2)
    ) u_x_bank3 (
        .clk  (clk),
        .we   (x3_mem_we),
        .waddr(x3_mem_waddr),
        .wdata(x3_mem_wdata),
        .re   (x3_mem_re),
        .raddr(x3_mem_raddr),
        .rdata(x3_mem_rdata)
    );

    // Constantes
    localparam RFFT_SIZE  = NFFT/2;
    localparam NFFT_LOG22 = $clog2(NFFT_LOG2);

    logic [NFFT_LOG2-1:0] frame_ptr_reversal;

    typedef enum logic [2:0] {
        IDLE,
        PROCESSING,
        PROCESSING_FINISH,
        CALC_REAL_POWER,
        DONE
    } fft_state_t;

    typedef struct packed {
        logic [NFFT_LOG2:0]  k;
        logic [NFFT_LOG2:0]  j;
        logic [NFFT_LOG22:0] stage;
        logic [NFFT_LOG2:0]  m;
        logic [NFFT_LOG2:0]  half_m;
        logic [NFFT_LOG2:0]  twiddle_index;
        logic [NFFT_LOG2:0]  twiddle_step;
    } butterfly_task_t;

    typedef struct packed {
        long_complex      even;
        long_complex      odd;
        long_complex      twiddle;
        butterfly_task_t  meta;
    } pipeline_stage_1_t;

    typedef struct packed {
        logic signed [COMPLEX_WIDTH-1:0] arbr;
        logic signed [COMPLEX_WIDTH-1:0] aibi;
        logic signed [COMPLEX_WIDTH-1:0] arbi;
        logic signed [COMPLEX_WIDTH-1:0] aibr;
        long_complex                     even;
        logic [NFFT_LOG2:0]              addr_even;
        logic [NFFT_LOG2:0]              addr_odd;
    } pipeline_stage_mul_t;

    typedef struct packed {
        long_complex        sum;
        long_complex        diff;
        logic [NFFT_LOG2:0] addr_even;
        logic [NFFT_LOG2:0] addr_odd;
        logic [1:0]         addr_even_bank;
        logic [1:0]         addr_odd_bank;
    } pipeline_stage_2_t;

    /////////////////
    fft_state_t      fft_state;
    butterfly_task_t sched;

    pipeline_stage_1_t    stage1;
    pipeline_stage_1_t    stage1_ff;
    pipeline_stage_mul_t  stage2_mul;
    pipeline_stage_2_t    stage3_addsub;

    // Pipeline de potência
    long_complex power_stage1;
    logic [WIDTH-1:0] power_stage2_re, stage1_mult_re, stage1_mult_im;
    logic [WIDTH-1:0] power_stage2_im;
    logic [WIDTH-1:0] power_stage3;

    logic power_valid_stage1, power_valid_stage2, power_valid_stage3;

    logic [NFFT_LOG2-1:0] power_ptr_stage1;
    logic [NFFT_LOG2-1:0] power_ptr_stage2;
    logic [NFFT_LOG2-1:0] power_ptr_stage3;
    logic [NFFT_LOG2-1:0] power_ptr;

    // Multiplicadores do pipeline de potencia
    long_mul_fixed #(.F(F)) u_mul_stage1_re (
        .a     (power_stage1.re[WIDTH-1:0]),
        .b     (power_stage1.re[WIDTH-1:0]),
        .result(stage1_mult_re)
    );

    long_mul_fixed #(.F(F)) u_mul_stage1_im (
        .a     (power_stage1.im[WIDTH-1:0]),
        .b     (power_stage1.im[WIDTH-1:0]),
        .result(stage1_mult_im)
    );

    // Endereços do agendador
    logic [NFFT_LOG2-1:0] even_ptr_sum, odd_ptr_sum;

    assign even_ptr_sum = sched.k + sched.j;
    assign odd_ptr_sum  = sched.k + sched.j + sched.half_m;

    // Twiddle
    logic [7:0]   twiddle_address;
    logic [127:0] twiddle_value;

    assign twiddle_address = sched.twiddle_index[NFFT_LOG2:0];

    twiddles_rom u_twiddles (
        .addr(twiddle_address),
        .dout(twiddle_value)
    );

    // LÓGICA DE LEITURA
    //
    // Canal A: even (PROCESSING) ou power (CALC_REAL_POWER)
    // Canal B: odd (PROCESSING)
    //
    // even e odd nunca ocupam o mesmo banco simultaneamente.
    // Mesmo padrão da escrita: re = OR dos canais

    logic [NFFT_LOG2-1:0] rd_addr_a, rd_addr_b;
    logic rd_valid_a, rd_valid_b;

    always_comb begin
        rd_addr_a  = '0;
        rd_valid_a = 1'b0;
        case (fft_state)
            PROCESSING: begin
                rd_addr_a  = even_ptr_sum[NFFT_LOG2-1:0];
                rd_valid_a = 1'b1;
            end
            PROCESSING_FINISH: begin
                rd_addr_a  = power_ptr;
                rd_valid_a = 1'b1;
            end
            CALC_REAL_POWER: begin
                rd_addr_a  = power_ptr + 1;
                rd_valid_a = 1'b1;
            end
            default: ;
        endcase
    end

    always_comb begin
        rd_addr_b  = '0;
        rd_valid_b = 1'b0;
        case (fft_state)
            PROCESSING: begin
                rd_addr_b  = odd_ptr_sum[NFFT_LOG2-1:0];
                rd_valid_b = 1'b1;
            end
            default: ;
        endcase
    end

    // Seleção de banco
    logic [1:0] bank_a, bank_b;

    always_comb begin
        bank_a = 2'b00;
        bank_b = 2'b00;
        for (int i = 0; i < NFFT_LOG2; i++) begin
            bank_a = bank_a + rd_addr_a[i];
            bank_b = bank_b + rd_addr_b[i];
        end
    end

    // Enables por banco, por canal
    logic x0_re_a, x1_re_a, x2_re_a, x3_re_a;
    logic x0_re_b, x1_re_b, x2_re_b, x3_re_b;

    logic x0_re_a_prev, x1_re_a_prev, x2_re_a_prev, x3_re_a_prev;
    logic x0_re_b_prev, x1_re_b_prev, x2_re_b_prev, x3_re_b_prev;

    always_ff @(posedge clk) begin
        if (!rst_n)  begin
            x0_re_a_prev <= 0;
            x1_re_a_prev <= 0;
            x2_re_a_prev <= 0;
            x3_re_a_prev <= 0;
            x0_re_b_prev <= 0;
            x1_re_b_prev <= 0;
            x2_re_b_prev <= 0;
            x3_re_b_prev <= 0;
        end else begin
            x0_re_a_prev <= x0_re_a;
            x1_re_a_prev <= x1_re_a;
            x2_re_a_prev <= x2_re_a;
            x3_re_a_prev <= x3_re_a;
            x0_re_b_prev <= x0_re_b;
            x1_re_b_prev <= x1_re_b;
            x2_re_b_prev <= x2_re_b;
            x3_re_b_prev <= x3_re_b;
        end
    end


    assign x0_re_a = rd_valid_a && (bank_a == 2'd0);
    assign x1_re_a = rd_valid_a && (bank_a == 2'd1);
    assign x2_re_a = rd_valid_a && (bank_a == 2'd2);
    assign x3_re_a = rd_valid_a && (bank_a == 2'd3);

    assign x0_re_b = rd_valid_b && (bank_b == 2'd0);
    assign x1_re_b = rd_valid_b && (bank_b == 2'd1);
    assign x2_re_b = rd_valid_b && (bank_b == 2'd2);
    assign x3_re_b = rd_valid_b && (bank_b == 2'd3);

    // Controle das SRAMs
    assign x0_mem_re = x0_re_a | x0_re_b;
    assign x1_mem_re = x1_re_a | x1_re_b;
    assign x2_mem_re = x2_re_a | x2_re_b;
    assign x3_mem_re = x3_re_a | x3_re_b;

    assign x0_mem_raddr = (x0_re_a ? rd_addr_a : '0) | (x0_re_b ? rd_addr_b : '0);
    assign x1_mem_raddr = (x1_re_a ? rd_addr_a : '0) | (x1_re_b ? rd_addr_b : '0);
    assign x2_mem_raddr = (x2_re_a ? rd_addr_a : '0) | (x2_re_b ? rd_addr_b : '0);
    assign x3_mem_raddr = (x3_re_a ? rd_addr_a : '0) | (x3_re_b ? rd_addr_b : '0);

    // Extração dos dados lidos
    long_complex x_read_even, x_read_odd;

    always_comb begin
        x_read_even = (x0_re_a_prev ? x0_mem_rdata : '0) |
                      (x1_re_a_prev ? x1_mem_rdata : '0) |
                      (x2_re_a_prev ? x2_mem_rdata : '0) |
                      (x3_re_a_prev ? x3_mem_rdata : '0);

        x_read_odd  = (x0_re_b_prev ? x0_mem_rdata : '0) |
                      (x1_re_b_prev ? x1_mem_rdata : '0) |
                      (x2_re_b_prev ? x2_mem_rdata : '0) |
                      (x3_re_b_prev ? x3_mem_rdata : '0);
    end

    // Main Control
    always_ff @(posedge clk) begin : FFT_CALCULATION_PIPELINED
        if (!rst_n) begin
            fft_state <= IDLE;
            sched.stage          <= 1;
            sched.k              <= 0;
            sched.j              <= 0;
            sched.m              <= 2;
            sched.half_m         <= 1;
            sched.twiddle_index  <= 0;
            sched.twiddle_step   <= NFFT >> 1;
            fft_done_o           <= 0;

            power_ptr        <= 0;
            power_ptr_stage1 <= 0;
            power_ptr_stage2 <= 0;
            power_ptr_stage3 <= 0;
            power_ptr_o      <= 0;
            power_valid_stage1 <= 0;
            power_valid_stage2 <= 0;
            power_valid_stage3 <= 0;
            power_valid_o      <= 0;
            power_stage3       <= 0;
        end else begin
            fft_done_o <= 0;
            stage1_ff.twiddle <= {twiddle_value[127:64], twiddle_value[63:0]};
            stage1_ff.meta    <= sched;
            case (fft_state)
                IDLE: begin
                    if (start_i) begin
                        fft_state <= PROCESSING;
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
                    // Leitura via SRAM (canais A e B)
                    stage1.even <= x_read_even;
                    stage1.odd  <= x_read_odd;

                    stage1.twiddle <= stage1_ff.twiddle;
                    stage1.meta    <= stage1_ff.meta;

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
                                fft_state <= PROCESSING_FINISH;
                            end
                        end
                    end
                end

                PROCESSING_FINISH: begin
                    stage1.even <= x_read_even;
                    stage1.odd <= x_read_odd;
                    stage1.twiddle <= stage1_ff.twiddle;
                    stage1.meta <= stage1_ff.meta;

                    fft_state <= CALC_REAL_POWER;
                    power_ptr <= 0;
                end

                CALC_REAL_POWER: begin
                    if (power_ptr_o == RFFT_SIZE) begin
                        fft_state <= DONE;
                    end else begin
                        power_ptr <= power_ptr + 1;
                        // Canal A transporta power_ptr neste estado
                        power_stage1 <= x_read_even;
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
                        power_ptr_o    <= power_ptr_stage3;
                        power_valid_o  <= power_valid_stage3;
                    end
                end

                DONE: begin
                    fft_done_o <= 1;
                    power_ptr        <= 0;
                    power_ptr_o      <= 0;
                    power_valid_stage1 <= 0;
                    power_valid_stage2 <= 0;
                    power_valid_stage3 <= 0;
                    power_valid_o      <= 0;
                    fft_state <= IDLE;
                end

                default: fft_state <= IDLE;
            endcase
        end
    end

    // Multiplicadores do twiddle (stage 2)
    logic signed [COMPLEX_WIDTH-1:0] arbr_result;
    logic signed [COMPLEX_WIDTH-1:0] aibi_result;
    logic signed [COMPLEX_WIDTH-1:0] arbi_result;
    logic signed [COMPLEX_WIDTH-1:0] aibr_result;

    long_mul_fixed #(.F(F)) u_mul_arbr (
        .a(stage1.twiddle.re), .b(stage1.odd.re), .result(arbr_result)
    );
    long_mul_fixed #(.F(F)) u_mul_aibi (
        .a(stage1.twiddle.im), .b(stage1.odd.im), .result(aibi_result)
    );
    long_mul_fixed #(.F(F)) u_mul_arbi (
        .a(stage1.twiddle.re), .b(stage1.odd.im), .result(arbi_result)
    );
    long_mul_fixed #(.F(F)) u_mul_aibr (
        .a(stage1.twiddle.im), .b(stage1.odd.re), .result(aibr_result)
    );

    // Estágio 2 do pipeline: multiplicação complexa
    always_ff @(posedge clk) begin
        stage2_mul.arbr <= arbr_result;
        stage2_mul.aibi <= aibi_result;
        stage2_mul.arbi <= arbi_result;
        stage2_mul.aibr <= aibr_result;

        stage2_mul.even <= stage1.even;

        stage2_mul.addr_even <= stage1.meta.k + stage1.meta.j;
        stage2_mul.addr_odd  <= stage1.meta.k + stage1.meta.j + stage1.meta.half_m;
    end

    // Popcounts para os endereços de writeback
    logic [1:0] count_addr_even, count_addr_odd;

    always_comb begin
        count_addr_even = 2'b00;
        count_addr_odd  = 2'b00;
        for (int i = 0; i < NFFT_LOG2; i++) begin
            count_addr_even = count_addr_even + stage2_mul.addr_even[i];
            count_addr_odd  = count_addr_odd  + stage2_mul.addr_odd[i];
        end
    end

    // Estágio 3 do pipeline: soma/subtração complexa
    always_ff @(posedge clk) begin
        stage3_addsub.sum.re <= stage2_mul.even.re + (stage2_mul.arbr - stage2_mul.aibi);
        stage3_addsub.sum.im <= stage2_mul.even.im + (stage2_mul.arbi + stage2_mul.aibr);

        stage3_addsub.diff.re <= stage2_mul.even.re - (stage2_mul.arbr - stage2_mul.aibi);
        stage3_addsub.diff.im <= stage2_mul.even.im - (stage2_mul.arbi + stage2_mul.aibr);

        stage3_addsub.addr_even <= stage2_mul.addr_even;
        stage3_addsub.addr_odd  <= stage2_mul.addr_odd;

        stage3_addsub.addr_even_bank <= count_addr_even;
        stage3_addsub.addr_odd_bank  <= count_addr_odd;
    end

    // Writeback
    logic [NFFT_LOG2-1:0] x0_write_addr_even, x1_write_addr_even, x2_write_addr_even, x3_write_addr_even;
    logic x0_write_en_even, x1_write_en_even, x2_write_en_even, x3_write_en_even;
    long_complex x0_write_data_even, x1_write_data_even, x2_write_data_even, x3_write_data_even;

    logic [NFFT_LOG2-1:0] x0_write_addr_odd, x1_write_addr_odd, x2_write_addr_odd, x3_write_addr_odd;
    logic x0_write_en_odd, x1_write_en_odd, x2_write_en_odd, x3_write_en_odd;
    long_complex x0_write_data_odd, x1_write_data_odd, x2_write_data_odd, x3_write_data_odd;

    logic [NFFT_LOG2-1:0] x0_write_addr_idle, x1_write_addr_idle, x2_write_addr_idle, x3_write_addr_idle;
    logic x0_write_en_idle, x1_write_en_idle, x2_write_en_idle, x3_write_en_idle;
    long_complex x0_write_data_idle, x1_write_data_idle, x2_write_data_idle, x3_write_data_idle;

    logic [3:0] wb_valid_pipe;

    always_ff @(posedge clk) begin
        if (!rst_n)
            wb_valid_pipe <= 3'b0;
        else
            wb_valid_pipe <= {wb_valid_pipe[2:0], (fft_state == PROCESSING)};
    end

    always_comb begin
        x0_write_en_odd   = '0;  x1_write_en_odd   = '0;
        x2_write_en_odd   = '0;  x3_write_en_odd   = '0;
        x0_write_addr_odd = '0;  x1_write_addr_odd = '0;
        x2_write_addr_odd = '0;  x3_write_addr_odd = '0;
        x0_write_data_odd = '0;  x1_write_data_odd = '0;
        x2_write_data_odd = '0;  x3_write_data_odd = '0;

        if ((fft_state == PROCESSING && wb_valid_pipe[3]) || 
            (fft_state == PROCESSING_FINISH) ||
            (fft_state == CALC_REAL_POWER && power_ptr < 3)) begin
            case (stage3_addsub.addr_odd_bank)
                2'd0: begin
                    x0_write_en_odd   = 1;
                    x0_write_addr_odd = stage3_addsub.addr_odd[NFFT_LOG2-1:0];
                    x0_write_data_odd = stage3_addsub.diff;
                end
                2'd1: begin
                    x1_write_en_odd   = 1;
                    x1_write_addr_odd = stage3_addsub.addr_odd[NFFT_LOG2-1:0];
                    x1_write_data_odd = stage3_addsub.diff;
                end
                2'd2: begin
                    x2_write_en_odd   = 1;
                    x2_write_addr_odd = stage3_addsub.addr_odd[NFFT_LOG2-1:0];
                    x2_write_data_odd = stage3_addsub.diff;
                end
                2'd3: begin
                    x3_write_en_odd   = 1;
                    x3_write_addr_odd = stage3_addsub.addr_odd[NFFT_LOG2-1:0];
                    x3_write_data_odd = stage3_addsub.diff;
                end
            endcase
        end
    end

    always_comb begin
        x0_write_en_even   = '0;  x1_write_en_even   = '0;
        x2_write_en_even   = '0;  x3_write_en_even   = '0;
        x0_write_addr_even = '0;  x1_write_addr_even = '0;
        x2_write_addr_even = '0;  x3_write_addr_even = '0;
        x0_write_data_even = '0;  x1_write_data_even = '0;
        x2_write_data_even = '0;  x3_write_data_even = '0;

        if ((fft_state == PROCESSING && wb_valid_pipe[3]) ||
            (fft_state == PROCESSING_FINISH) ||
            (fft_state == CALC_REAL_POWER && power_ptr < 3)) begin
            case (stage3_addsub.addr_even_bank)
                2'd0: begin
                    x0_write_en_even   = 1;
                    x0_write_addr_even = stage3_addsub.addr_even[NFFT_LOG2-1:0];
                    x0_write_data_even = stage3_addsub.sum;
                end
                2'd1: begin
                    x1_write_en_even   = 1;
                    x1_write_addr_even = stage3_addsub.addr_even[NFFT_LOG2-1:0];
                    x1_write_data_even = stage3_addsub.sum;
                end
                2'd2: begin
                    x2_write_en_even   = 1;
                    x2_write_addr_even = stage3_addsub.addr_even[NFFT_LOG2-1:0];
                    x2_write_data_even = stage3_addsub.sum;
                end
                2'd3: begin
                    x3_write_en_even   = 1;
                    x3_write_addr_even = stage3_addsub.addr_even[NFFT_LOG2-1:0];
                    x3_write_data_even = stage3_addsub.sum;
                end
            endcase
        end
    end

    // Popcount de frame_ptr_reversal (entrada)
    logic [1:0] count_frame_ptr_reversal;

    always_comb begin
        count_frame_ptr_reversal = 2'b00;
        for (int i = 0; i < NFFT_LOG2; i++) begin
            count_frame_ptr_reversal = count_frame_ptr_reversal + frame_ptr_reversal[i];
        end
    end

    always_comb begin
        x0_write_en_idle   = '0;  x1_write_en_idle   = '0;
        x2_write_en_idle   = '0;  x3_write_en_idle   = '0;
        x0_write_addr_idle = '0;  x1_write_addr_idle = '0;
        x2_write_addr_idle = '0;  x3_write_addr_idle = '0;
        x0_write_data_idle = '0;  x1_write_data_idle = '0;
        x2_write_data_idle = '0;  x3_write_data_idle = '0;

        if (in_valid && fft_state == IDLE) begin
            x0_write_addr_idle = frame_ptr_reversal;
            x1_write_addr_idle = frame_ptr_reversal;
            x2_write_addr_idle = frame_ptr_reversal;
            x3_write_addr_idle = frame_ptr_reversal;

            x0_write_en_idle = (count_frame_ptr_reversal == 2'b00);
            x1_write_en_idle = (count_frame_ptr_reversal == 2'b01);
            x2_write_en_idle = (count_frame_ptr_reversal == 2'b10);
            x3_write_en_idle = (count_frame_ptr_reversal == 2'b11);

            x0_write_data_idle = {frame_sample_i, COMPLEX_WIDTH'(0)};
            x1_write_data_idle = {frame_sample_i, COMPLEX_WIDTH'(0)};
            x2_write_data_idle = {frame_sample_i, COMPLEX_WIDTH'(0)};
            x3_write_data_idle = {frame_sample_i, COMPLEX_WIDTH'(0)};
        end
    end

    // Mux de escrita (mantido)
    assign x0_mem_waddr = (fft_state == IDLE) ? x0_write_addr_idle : (x0_write_addr_even | x0_write_addr_odd);
    assign x1_mem_waddr = (fft_state == IDLE) ? x1_write_addr_idle : (x1_write_addr_even | x1_write_addr_odd);
    assign x2_mem_waddr = (fft_state == IDLE) ? x2_write_addr_idle : (x2_write_addr_even | x2_write_addr_odd);
    assign x3_mem_waddr = (fft_state == IDLE) ? x3_write_addr_idle : (x3_write_addr_even | x3_write_addr_odd);

    assign x0_mem_we = (fft_state == IDLE) ? x0_write_en_idle : (x0_write_en_even | x0_write_en_odd);
    assign x1_mem_we = (fft_state == IDLE) ? x1_write_en_idle : (x1_write_en_even | x1_write_en_odd);
    assign x2_mem_we = (fft_state == IDLE) ? x2_write_en_idle : (x2_write_en_even | x2_write_en_odd);
    assign x3_mem_we = (fft_state == IDLE) ? x3_write_en_idle : (x3_write_en_even | x3_write_en_odd);

    assign x0_mem_wdata = (fft_state == IDLE) ? x0_write_data_idle : (x0_write_data_even | x0_write_data_odd);
    assign x1_mem_wdata = (fft_state == IDLE) ? x1_write_data_idle : (x1_write_data_even | x1_write_data_odd);
    assign x2_mem_wdata = (fft_state == IDLE) ? x2_write_data_idle : (x2_write_data_even | x2_write_data_odd);
    assign x3_mem_wdata = (fft_state == IDLE) ? x3_write_data_idle : (x3_write_data_even | x3_write_data_odd);

    // Bit reversal
    genvar k;
    generate
        for (k = 0; k < NFFT_LOG2; k = k + 1) begin : bit_reverse
            assign frame_ptr_reversal[k] = frame_ptr_i[NFFT_LOG2 - 1 - k];
        end
    endgenerate
 
endmodule