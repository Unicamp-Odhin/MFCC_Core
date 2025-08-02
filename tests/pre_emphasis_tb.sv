`timescale 1ns/1ps
module pre_emphasis_tb ();

    localparam AUDIO_PATH     = "data/seno_440Hz.hex";
    localparam MAX_AUDIO_SIZE = 1600;
    localparam ALPHA          = 16'd31785;
    localparam SAMPLE_WIDTH   = 16; // Largura do sample de áudio

    logic clk;
    logic rst_n;

    logic [15:0] samples [0:MAX_AUDIO_SIZE-1];

    logic [15:0] pcm_in;
    logic pcm_ready_i;
    logic pre_emphasis_valid;
    logic [15:0] pre_emphasized_signal;

    pre_emphasis #(
        .SAMPLE_WIDTH (SAMPLE_WIDTH),
        .ALPHA        (ALPHA) // Alpha em Q1.15 (0.97 ≈ 31785)
    ) uut (
        .clk          (clk),
        .rst_n        (rst_n),

        .in_valid     (pcm_ready_i),
        .out_valid    (pre_emphasis_valid),

        .x_in         (pcm_in), // Sinal de entrada
        .y_out        (pre_emphasized_signal) // Sinal de saída
    );

    integer i;

    initial begin
        $readmemh(AUDIO_PATH, samples);
        $dumpfile("build/pre_emphasis_tb.vcd");
        $dumpvars(0, pre_emphasis_tb);
        
        $display("Iniciando teste de Pre Emphasis");

        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");
        
        #(1000); // Espera 1ms para garantir que o reset foi aplicado

        wait(pcm_ready_i == 0);

        $finish;
    end

    always #1 clk = ~clk;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pcm_ready_i <= 0;
            pcm_in      <= 0;
        end else begin
            if (i < MAX_AUDIO_SIZE) begin
                pcm_in      <= samples[i];
                pcm_ready_i <= 1;
                i           <= i + 1;
            end else begin
                pcm_ready_i <= 0;
            end
        end
    end

endmodule
