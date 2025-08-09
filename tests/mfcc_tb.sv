`timescale 1ns/1ps

import mfcc_pkg::mfcc_data_t;

module mfcc_tb ();

    localparam AUDIO_PATH       = "data/seno_440Hz.hex";
    localparam MAX_AUDIO_SIZE   = 1600;
    localparam SAMPLE_WIDTH     = 16;
    localparam PCM_FIFO_DEPTH   = 256;
    localparam FRAME_SIZE       = 400;
    localparam FRAME_MOVE       = 160;
    localparam ALPHA            = 16'd31785;
    localparam FFT_SIZE         = 512;
    localparam NUM_FILTERS      = 40;
    localparam NUM_COEFFICIENTS = 12;

    logic clk;
    logic rst_n;

    logic [15:0] samples [0:MAX_AUDIO_SIZE-1];

    logic [15:0] pcm_in;
    logic pcm_ready;

    logic mfcc_done, start_mfcc;
    mfcc_data_t coeficientes [0:NUM_COEFFICIENTS - 1];

    MFCC_Core #(
        .SAMPLE_WIDTH     (SAMPLE_WIDTH),
        .NUM_COEFFICIENTS (NUM_COEFFICIENTS),
        .NUM_FILTERS      (NUM_FILTERS),
        .FRAME_SIZE       (FRAME_SIZE),
        .FRAME_MOVE       (FRAME_MOVE),
        .FFT_SIZE         (FFT_SIZE),
        .PCM_FIFO_DEPTH   (PCM_FIFO_DEPTH),
        .ALPHA            (ALPHA) // Alpha em Q1.15 (0.97 ≈ 31785)
    ) uut (
        .clk          (clk),
        .rst_n        (rst_n),

        .pcm_in       (pcm_in),
        .pcm_ready_i  (pcm_ready),

        .start_i      (start_mfcc), // Inicia o processamento imediatamente
        .mfcc_done_o  (mfcc_done),
        .mfcc_data_o  (coeficientes)
    );

    task dump_mel_in_data(input int frame_id);
        integer fd;
        integer i;
        string filename;
        begin
            // Monta o nome do arquivo com número
            filename = $sformatf("data/mel_in_data_%0d.hex", frame_id);

            fd = $fopen(filename, "w");
            if (fd) begin
                for (i = 0; i < 257; i = i + 1) begin
                    $fwrite(fd, "%h\n", uut.u_mel.power_spectrum_mem[i]);
                end
                $fclose(fd);
            end else begin
                $display("Erro: não foi possível abrir o arquivo %s", filename);
            end
        end
        
    endtask

    task dump_mfcc_data();
        integer k;
        for (k = 0; k < NUM_COEFFICIENTS; k++) begin
            $display("Coeficiente[%0d]: %4X", k, coeficientes[k].mfcc_sample);
        end
    endtask

    task dump_hamming_to_hex(input int frame_id);
        integer fd;
        integer i;
        string filename;
        begin
            // Monta o nome do arquivo com número
            filename = $sformatf("data/hamming_dump_mfcc_%0d.hex", frame_id);

            fd = $fopen(filename, "w");
            if (fd) begin
            for (i = 0; i < FRAME_SIZE; i = i + 1) begin
                //$fwrite(fd, "%h\n", uut.hamming_buffer[i]);
            end
            $fclose(fd);
            end else begin
            $display("Erro: não foi possível abrir o arquivo %s", filename);
            end
        end
    endtask

    integer i, j;

    initial begin
        $readmemh(AUDIO_PATH, samples);
        $dumpfile("build/mfcc_tb.vcd");
        $dumpvars(0, mfcc_tb);
        //$monitor("i: %0d, pcm_in: %0d, pcm_ready: %b, mfcc_done: %b", i, pcm_in, pcm_ready, mfcc_done);
        //$monitor("conflito : %b", uut.u_fft.conflict);
        
        $display("Iniciando teste do MFCC Core");

        rst_n = 0;
        clk   = 0;
        #20;
        rst_n = 1;
        start_mfcc = 0;

        $display("Iniciando processamento de áudio");
 
        #20

        for(j = 0; j < 1; j++) begin
            $display("Processando quadro %0d", j + 1);

            wait(uut.hamming_done);
            //dump_hamming_to_hex(j);
            wait(uut.fft_done);
            //$display("FFT concluída para o quadro %0d", j + 1);
            dump_mel_in_data(j);

            wait(mfcc_done);

            dump_mfcc_data();

            #10

            start_mfcc = 1;
            #20; // Espera um pouco para garantir que o processamento comece
            start_mfcc = 0;

            #20;
        end
/*
        wait(mfcc_done);
        dump_mfcc_data();
*/
        $display("Processamento concluído. Coeficientes MFCC:");

        #20;

        $finish;
    end

    always #5 clk = ~clk; // Clock de 100MHz

    localparam SAMPLE_INTERVAL = 6250; // ciclos de clock (100MHz / 16kHz)

    integer sample_timer;

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            i          <= 0;
            pcm_ready  <= 0;
            pcm_in     <= 0;
            sample_timer <= 0;
        end else begin
            if (i < MAX_AUDIO_SIZE) begin
                if (sample_timer == 0) begin
                    pcm_in     <= samples[i];
                    pcm_ready  <= 1;
                    i          <= i + 1;
                    sample_timer <= SAMPLE_INTERVAL - 1;
                end else begin
                    pcm_ready  <= 0;
                    sample_timer <= sample_timer - 1;
                end
            end else begin
                pcm_ready <= 0;
            end
        end
    end


endmodule
