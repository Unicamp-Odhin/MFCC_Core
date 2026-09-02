module base2log #(
    parameter int WIDTH = 32,
    parameter int OUTPUT_WIDTH = $clog2(WIDTH * 6 + 1)
)(
    input  logic [WIDTH-1:0] number_i,
    output logic [OUTPUT_WIDTH-1:0] log_o
);

    integer i;

    always_comb begin
        log_o = '0;

        for (i = WIDTH-1; i >= 0; i = i-1) begin
            if (number_i[i]) begin
                log_o = i * 6;
                break;
            end
        end
    end

endmodule
