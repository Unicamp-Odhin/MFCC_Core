`timescale 1ns/1ps

module pre_emphasis_tb ();
    localparam WIDTH_MIC = 16;
    localparam WIDTH = 64;
    localparam F = 16;
    localparam MAX_AUDIO_SIZE = 4001;
    localparam int ALPHA = $rtoi(0.97 * (1 << F));

    logic clk;
    logic rst_n;

    logic [WIDTH_MIC-1:0] samples [0:MAX_AUDIO_SIZE-1];

    logic [WIDTH_MIC-1:0] pcm_in;
    logic pcm_ready_i;
    logic pre_emphasis_valid;
    logic [WIDTH-1:0] pre_emphasized_signal;

    integer outfile;

    pre_emphasis #(
        .WIDTH_IN (WIDTH_MIC),
        .WIDTH_OUT (WIDTH),
        .F (F),
        .ALPHA (ALPHA) 
    ) uut (
        .clk (clk),
        .rst_n (rst_n),

        .in_valid (pcm_ready_i),
        .out_valid (pre_emphasis_valid),

        .x_in (pcm_in), 
        .y_out (pre_emphasized_signal) 
    );

    integer i;

    initial begin
        $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);

        $dumpfile({`TESTS_DIR, "/build/pre_emphasis_tb.vcd"});
        $dumpvars(0, pre_emphasis_tb);

        outfile = $fopen({`TESTS_DIR, "/data/1_pre_emphasis.hex"}, "w"); 

        if (outfile == 0) begin
            $display("Erro ao abrir arquivo!");
            $finish;
        end
        
        $display("Iniciando teste de Pre Emphasis");

        rst_n = 0;
        clk   = 0;
        #4;
        rst_n = 1;

        $display("Iniciando processamento de áudio");
        
        #(1000); // Espera 1ms para garantir que o reset foi aplicado

        wait(pcm_ready_i == 0);

        $fclose(outfile);
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

    always_ff @(posedge clk) begin
    if (pre_emphasis_valid) begin
        $fdisplay(outfile, "%h", pre_emphasized_signal);
    end
end

endmodule
