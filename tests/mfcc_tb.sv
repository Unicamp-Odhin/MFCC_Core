`timescale 1ns/1ps

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
        .pcm_ready_i  (pcm_ready)
    );

    integer i;

    initial begin
        $readmemh(AUDIO_PATH, samples);
        $dumpfile("build/mfcc_tb.vcd");
        $dumpvars(0, mfcc_tb);
        
        $display("Iniciando teste do MFCC Core");

        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");
        
        #(1000); // Espera 1ms para garantir que o reset foi aplicado

        $finish;
    end

    always #1 clk = ~clk;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pcm_ready <= 0;
            pcm_in    <= 0;
        end else begin
            if (i < MAX_AUDIO_SIZE) begin
                pcm_in    <= samples[i];
                pcm_ready <= 1;
                i         <= i + 1;
            end else begin
                pcm_ready <= 0;
            end
        end
    end

endmodule
