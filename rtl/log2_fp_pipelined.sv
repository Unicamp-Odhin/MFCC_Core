
module log2_fp_pipelined #(
    parameter int F = 16,
    parameter int WIDTH_ADDR = 16,
    parameter int WIDTH_RESULT = 64
) (
    input  logic clk,
    input  logic rst_n,

    input  logic valid_i,
    input  logic signed [WIDTH_RESULT-1:0] x,

    input  logic [WIDTH_ADDR-1:0] ptr_i,
    input  logic done_i,

    output logic [WIDTH_ADDR-1:0] ptr_o,
    output logic done_o,

    output logic valid_o,
    output logic signed [WIDTH_RESULT-1:0] result
);

    localparam int W = F + 1;
    localparam int P = 2 * W;
    localparam int S = F + 2;


    logic [W-1:0] x_pipe [0:F];
    logic [F-1:0] frac_pipe [0:F];

    logic signed [63:0] int_pipe [0:F];
    logic special_pipe [0:F];

    logic [F:0] valid_pipe;

    // Auxiliary information pipeline
    logic [WIDTH_ADDR-1:0] ptr_pipe [0:F];
    logic [F:0] done_pipe;

    logic [63:0] xu;
    logic [63:0] shifted_x;

    logic [W-1:0] normalized_x;
    logic signed [63:0] int_scaled;

    logic special_d;

    integer k;
    integer shift_amt;
    integer i;

    always_comb begin
        xu           = 64'd0;
        shifted_x    = 64'd0;
        normalized_x = '0;
        int_scaled   = 64'sd0;
        special_d    = 1'b0;

        k         = 0;
        shift_amt = 0;

        if (x <= 0) begin
            special_d = 1'b1;
        end else begin

            xu = x;

            // Find most significant bit set
            for (i = 0; i < 64; i = i + 1) begin
                if (xu[i])
                    k = i;
            end

            // Integer part
            int_scaled = $signed(k - F);
            int_scaled = int_scaled <<< F;

            // Normalize: MSB at position F
            if (k < F) begin
                shift_amt = F - k;
                shifted_x = xu << shift_amt;
            end else begin
                shift_amt = k - F;
                shifted_x = xu >> shift_amt;
            end

            normalized_x = shifted_x[F:0];

        end
    end

    always_ff @(posedge clk) begin
        x_pipe[0]       <= normalized_x;
        frac_pipe[0]    <= '0;
        int_pipe[0]     <= int_scaled;
        special_pipe[0] <= special_d;
    end

    genvar g;

    generate
        for (g = 1; g <= F; g = g + 1) begin : gen_log_stages

            logic [P-1:0] produto;
            logic [S-1:0] deslocado;
            logic cond;

            logic [F-1:0] frac_next;
            logic [W-1:0] x_next;

            assign produto = x_pipe[g-1] * x_pipe[g-1];

            assign deslocado = produto >> F;

            assign cond = deslocado[F+1];

            always_comb begin

                frac_next = frac_pipe[g-1];
                frac_next[F-g] = cond;

                if (cond)
                    x_next = deslocado >> 1;
                else
                    x_next = deslocado[F:0];

            end

            always_ff @(posedge clk) begin
                x_pipe[g]       <= x_next;
                frac_pipe[g]    <= frac_next;

                int_pipe[g]     <= int_pipe[g-1];
                special_pipe[g] <= special_pipe[g-1];
            end

        end
    endgenerate


    always_ff @(posedge clk) begin
        if (!rst_n) begin
            valid_pipe <= '0;
            done_pipe  <= '0;

            for (integer j = 0; j <= F; j = j + 1) begin
                ptr_pipe[j] <= '0;
            end

        end else begin

            valid_pipe[0] <= valid_i;
            done_pipe[0]  <= done_i;
            ptr_pipe[0]   <= ptr_i;

            for (integer j = 1; j <= F; j = j + 1) begin
                valid_pipe[j] <= valid_pipe[j-1];
                done_pipe[j]  <= done_pipe[j-1];
                ptr_pipe[j]   <= ptr_pipe[j-1];
            end

        end
    end

    always_comb begin

        valid_o = valid_pipe[F];

        ptr_o = ptr_pipe[F];
        done_o = done_pipe[F];

        if (special_pipe[F]) begin
            result = 64'h8000_0000_0000_0000;
        end else begin
            result = int_pipe[F] |
                     {{(64-F){1'b0}}, frac_pipe[F]};
        end

    end

endmodule

