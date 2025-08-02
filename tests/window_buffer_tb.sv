`timescale 1ns/1ps
module window_buffer_tb ();

    localparam AUDIO_PATH     = "data/seno_440Hz.hex";
    localparam MAX_AUDIO_SIZE = 1600;
    localparam SAMPLE_WIDTH   = 16;
    localparam PCM_FIFO_DEPTH = 256;
    localparam FRAME_SIZE     = 400;
    localparam FRAME_MOVE     = 160;
    localparam ALPHA          = 16'd31785;

    logic clk;
    logic rst_n;

    logic [SAMPLE_WIDTH - 1:0] samples [0:MAX_AUDIO_SIZE - 1];

    logic [15:0] pcm_in;
    logic pcm_ready_i;
    logic pre_emphasis_valid;
    logic [15:0] pre_emphasized_signal;

    pre_emphasis #(
        .SAMPLE_WIDTH (SAMPLE_WIDTH),
        .ALPHA        (ALPHA) // Alpha em Q1.15 (0.97 ≈ 31785)
    ) u_pre_emphasis (
        .clk          (clk),
        .rst_n        (rst_n),

        .in_valid     (pcm_ready_i),
        .out_valid    (pre_emphasis_valid),

        .x_in         (pcm_in), // Sinal de entrada
        .y_out        (pre_emphasized_signal) // Sinal de saída
    );

    logic fifo_empty, fifo_full, fifo_rd_en;
    logic [SAMPLE_WIDTH - 1:0] fifo_read_data;

    fifo #(
        .DEPTH        (PCM_FIFO_DEPTH),
        .WIDTH        (SAMPLE_WIDTH)
    ) tx_fifo (
        .clk          (clk),
        .rst_n        (rst_n),

        .wr_en_i      (pre_emphasis_valid),
        .rd_en_i      (fifo_rd_en),

        .write_data_i (pre_emphasized_signal),
        .full_o       (fifo_full),
        .empty_o      (fifo_empty),
        .read_data_o  (fifo_read_data)
    );

    logic [SAMPLE_WIDTH - 1:0] window_buffer_data;
    logic window_valid_to_read;
    logic window_rd_en;
    logic start_move;
    logic start_hamming;

    window_buffer #(
        .WIDTH                (SAMPLE_WIDTH),
        .FRAME_SIZE           (FRAME_SIZE),
        .MOVE_SIZE            (FRAME_MOVE)
    ) u_window_buffer (
        .clk                  (clk),                         // 1 bit
        .rst_n                (rst_n),                       // 1 bit

        .start_move           (start_move),                  // 1 bit

        .fifo_rd_en_o         (fifo_rd_en),                  // 1 bit
        .fifo_data_i          (fifo_read_data),              // 16 bits
        .fifo_empty_i         (fifo_empty),                  // 1 bit

        .rd_en_i              (window_rd_en),                // 10 bits
        .read_data_o          (window_buffer_data),          // 16 bits
        .valid_to_read_o      (window_valid_to_read),        // 1 bit

        .start_next_state_o   (start_hamming)
    );

    task dump_buffer_to_hex;
        integer fd;
        integer i;
        begin
            fd = $fopen("buffer_dump.hex", "w");
            for (i = 0; i < FRAME_SIZE; i = i + 1) begin
            $fwrite(fd, "%H\n", u_window_buffer.buffer[i]);
            end
            $fclose(fd);
        end
    endtask


    integer i;

    initial begin
        $readmemh(AUDIO_PATH, samples);
        $dumpfile("build/window_buffer_tb.vcd");
        $dumpvars(0, window_buffer_tb);

        $display("Iniciando teste de Window Buffer");

        start_move = 0;
        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");
        
        #(1000); // Espera 1ms para garantir que o reset foi aplicado

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.internal_read_ptr == 0) else begin
            $error("Erro: internal_read_ptr está na posição errada. %d, esperada: %d", u_window_buffer.internal_read_ptr, 0);
            $finish;
        end

        assert(u_window_buffer.write_ptr == 0) else begin
            $error("Erro: write_ptr não está zerado após o encher o buffer pela primeira vez. %d", u_window_buffer.write_ptr);
            $finish;
        end

        $display("Segunda sample: %X", u_window_buffer.buffer[2]);
        dump_buffer_to_hex;

        #(20); // Espera 10 ciclos de clock

        $display("Iniciando o primeiro movimento do buffer");

        start_move = 1; // Inicia o movimento do buffer

        #2 // espera 1 ciclo de clock

        start_move = 0; // Desativa o sinal de início

        @(negedge clk); // Espera o próximo ciclo de clock

        assert(u_window_buffer.internal_read_ptr == 160) else begin
            $error("Erro: internal_read_ptr está na posição errada. %d, esperada: %d", u_window_buffer.internal_read_ptr, 160);
            $finish;
        end

        #(20);

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.write_ptr == 160) else begin
            $error("Erro: write_ptr não está correto após o segundo movimento. %d, esperada: %d", u_window_buffer.write_ptr, 160);
            $finish;
        end

        #20 // Espera 10 ciclos de clock

        $display("Iniciando o segundo movimento do buffer");

        start_move = 1; // Inicia o movimento do buffer

        #2 // espera 1 ciclo de clock

        start_move = 0; // Desativa o sinal de início

        @(negedge clk); // Espera o próximo ciclo de clock

        assert(u_window_buffer.internal_read_ptr == 320) else begin
            $error("Erro: internal_read_ptr não está correto após o segundo movimento. %d, esperada: %d", u_window_buffer.internal_read_ptr, 320);
            $finish;
        end

        #(20);

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.write_ptr == 320) else begin
            $error("Erro: write_ptr não está correto após o terceiro movimento. %d, esperada: %d", u_window_buffer.write_ptr, 320);
            $finish;
        end

        #20 // Espera 10 ciclos de clock

        $display("Iniciando o terceiro movimento do buffer");

        start_move = 1; // Inicia o movimento do buffer

        #2 // espera 1 ciclo de clock

        start_move = 0; // Desativa o sinal de início

        @(negedge clk); // Espera o próximo ciclo de clock

        assert(u_window_buffer.internal_read_ptr == 80) else begin
            $error("Erro: internal_read_ptr não está correto após o terceiro movimento. %d, esperada: %d", u_window_buffer.internal_read_ptr, 80);
            $finish;
        end

        #(20);

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.write_ptr == 80) else begin
            $error("Erro: write_ptr não está correto após o terceiro movimento. %d, esperada: %d", u_window_buffer.write_ptr, 80);
            $finish;
        end

        #20 // Espera 10 ciclos de clock

        $finish;
    end

    always #1 clk = ~clk;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pcm_ready_i <= 0;
            pcm_in      <= 0;
        end else begin
            if (i < MAX_AUDIO_SIZE && !fifo_full) begin
                pcm_in      <= samples[i];
                pcm_ready_i <= 1;
                i           <= i + 1;
            end else begin
                pcm_ready_i <= 0;
            end

            if(fifo_full && pcm_ready_i) begin
                i <= i - 2;
            end
        end
    end

endmodule
