`timescale 1ns/1ps
module window_buffer_tb ();

    localparam MAX_AUDIO_SIZE = 65530;
    localparam SAMPLE_RATE = 12207;
    localparam N = 16;
    localparam F_PRE_EMPHASIS = 15;
    localparam F_HAMMING = 15;
    localparam PCM_FIFO_DEPTH = 2048;
    localparam FRAME_SIZE_T = 0.025;
    localparam FRAME_STEP_T = 0.01;
    localparam FRAME_SIZE = $rtoi(SAMPLE_RATE * FRAME_SIZE_T);
    localparam FRAME_STEP = $rtoi(SAMPLE_RATE * FRAME_STEP_T);
    localparam ALPHA = $rtoi(0.97 * (1 << F_PRE_EMPHASIS));
    localparam FFT_SIZE = 512;

    localparam EXPECTED_PTR_1 = FRAME_STEP;
    localparam EXPECTED_PTR_2 = (FRAME_STEP * 2) % FRAME_SIZE;
    localparam EXPECTED_PTR_3 = (FRAME_STEP * 3) % FRAME_SIZE;

    logic clk;
    logic rst_n;

    logic [N-1:0] samples [0:MAX_AUDIO_SIZE - 1];

    logic signed [N-1:0] pcm_in;
    logic signed [2*N-1:0] pre_emphasized_signal;
    logic pcm_ready_i;
    logic pre_emphasis_valid;

    pre_emphasis #(
        .N (N),
        .F (F_PRE_EMPHASIS),
        .ALPHA (ALPHA)
    ) u_pre_emphasis (
        .clk (clk),
        .rst_n (rst_n),

        .in_valid (pcm_ready_i),
        .out_valid (pre_emphasis_valid),

        .x_in (pcm_in), // Sinal de entrada
        .y_out (pre_emphasized_signal) // Sinal de saída
    );


    logic fifo_empty, fifo_full, fifo_rd_en;
    logic [N-1:0] fifo_read_data;

    fifo #(
        .DEPTH        (PCM_FIFO_DEPTH),
        .WIDTH        (2*N)
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

    logic [2*N-1:0] window_buffer_data;
    logic window_valid_to_read;
    logic window_rd_en;
    logic start_move;
    logic start_hamming;

    window_buffer #(
        .WIDTH                (2*N),
        .FRAME_SIZE           (FRAME_SIZE),
        .FRAME_STEP            (FRAME_STEP)
    ) u_window_buffer (
        .clk                  (clk),
        .rst_n                (rst_n),

        .start_move           (start_move),

        .fifo_rd_en_o         (fifo_rd_en),
        .fifo_data_i          (fifo_read_data),
        .fifo_empty_i         (fifo_empty),

        .rd_en_i              (window_rd_en),
        .read_data_o          (window_buffer_data),
        .valid_to_read_o      (window_valid_to_read),

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
        $readmemh({`TESTS_DIR, "/data/samples.hex"}, samples);
        $dumpfile({`TESTS_DIR, "/build/window_buffer_tb.vcd"});
        $dumpvars(0, window_buffer_tb);

        $display("Iniciando teste de Window Buffer");

        start_move = 0;
        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");
        #(1000);

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

        assert(u_window_buffer.internal_read_ptr == EXPECTED_PTR_1) else begin
            $error("Erro: internal_read_ptr está na posição errada. %d, esperada: %d", u_window_buffer.internal_read_ptr, EXPECTED_PTR_1);
            $finish;
        end

        #(20);

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.write_ptr == EXPECTED_PTR_1) else begin
            $error("Erro: write_ptr não está correto após o segundo movimento. %d, esperada: %d", u_window_buffer.write_ptr, EXPECTED_PTR_1);
            $finish;
        end

        #20 // Espera 10 ciclos de clock

        $display("Iniciando o segundo movimento do buffer");

        start_move = 1; // Inicia o movimento do buffer

        #2 // espera 1 ciclo de clock

        start_move = 0; // Desativa o sinal de início

        @(negedge clk); // Espera o próximo ciclo de clock

        assert(u_window_buffer.internal_read_ptr == EXPECTED_PTR_2) else begin
            $error("Erro: internal_read_ptr não está correto após o segundo movimento. %d, esperada: %d", u_window_buffer.internal_read_ptr, EXPECTED_PTR_2);
            $finish;
        end

        #(20);

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.write_ptr == EXPECTED_PTR_2) else begin
            $error("Erro: write_ptr não está correto após o terceiro movimento. %d, esperada: %d", u_window_buffer.write_ptr, EXPECTED_PTR_2);
            $finish;
        end

        #20 // Espera 10 ciclos de clock

        $display("Iniciando o terceiro movimento do buffer");

        start_move = 1; // Inicia o movimento do buffer

        #2 // espera 1 ciclo de clock

        start_move = 0; // Desativa o sinal de início

        @(negedge clk); // Espera o próximo ciclo de clock

        assert(u_window_buffer.internal_read_ptr == EXPECTED_PTR_3) else begin
            $error("Erro: internal_read_ptr não está correto após o terceiro movimento. %d, esperada: %d", u_window_buffer.internal_read_ptr, EXPECTED_PTR_3);
            $finish;
        end

        #(20);

        wait(u_window_buffer.current_state == 0);

        assert(u_window_buffer.write_ptr == EXPECTED_PTR_3) else begin
            $error("Erro: write_ptr não está correto após o terceiro movimento. %d, esperada: %d", u_window_buffer.write_ptr, EXPECTED_PTR_3);
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
        end
    end

endmodule