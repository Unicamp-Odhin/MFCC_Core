`timescale 1ns/1ps

module window_buffer #(
    parameter WIDTH       = 16,
    parameter FRAME_SIZE  = 306,
    parameter FRAME_STEP   = 123
)(
    input  logic clk,
    input  logic rst_n,

    // Control signals
    input  logic                       start_move,

    // FIFO Interface
    output logic                       fifo_rd_en_o,
    input  logic [WIDTH-1:0]           fifo_data_i,
    input  logic                       fifo_empty_i,

    // Read Interface
    input  logic                       rd_en_i,
    output logic [WIDTH-1:0]           read_data_o,
    output logic                       valid_to_read_o,
    
    output logic                       start_next_state_o,
    output logic                       idle_o
);
    logic [WIDTH-1:0] buffer [0:FRAME_SIZE-1];
    
    localparam int PTR_WIDTH = $clog2(FRAME_SIZE);
    logic [PTR_WIDTH-1:0] frame_size, frame_step;
    logic [PTR_WIDTH-1:0] wr_ptr; // ponteiro de escrita no buffer circular 
    logic [PTR_WIDTH-1:0] win_rd_idx; // ndice sequencial dentro da janela atual
    logic [PTR_WIDTH-1:0] win_base_ptr; // endereço base da janela
    logic [PTR_WIDTH-1:0] rd_phys_addr; // De fato onde a sample está no buffer
    logic [PTR_WIDTH-1:0] fill_cnt; // Quantas amostras faltam ser lidas para completar a próxima janela

    assign frame_size = FRAME_SIZE;
    assign frame_step = FRAME_STEP;

    typedef enum logic [2:0] {
        IDLE,
        START,
        MOVE,
        REQUEST_DATA,
        FILL
    } state_t;

    state_t current_state, next_state;

    // Controle de estados
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            current_state <= START;
        end else begin
            current_state <= next_state;
        end
    end

    logic fill_cnt_is_zero;
    assign fill_cnt_is_zero = ~|fill_cnt;

    always_comb begin
        next_state = current_state;
        idle_o     = 0;

        unique case (current_state)
            IDLE: begin
                idle_o = 1;
                if (start_move) next_state = MOVE;
            end
            START: next_state = REQUEST_DATA;
            MOVE: next_state = REQUEST_DATA;
            REQUEST_DATA: begin
                if (!fifo_empty_i) begin
                    next_state = FILL;
                end else begin
                    next_state = REQUEST_DATA;
                end
            end
            FILL: begin
                if (fill_cnt_is_zero)
                    next_state = IDLE;
                else if (fifo_empty_i) 
                    next_state = REQUEST_DATA;
                else
                    next_state = FILL;
            end
            default: next_state = current_state;
        endcase
    end
    logic [PTR_WIDTH:0] addr_sum;
    assign addr_sum = win_base_ptr + win_rd_idx;

    logic diff_pointers, next_state_is_valid_to_read;
    assign diff_pointers = ((addr_sum >= frame_size) ? (addr_sum - frame_size) : addr_sum) != {1'b0, wr_ptr};
    assign valid_to_read_o = next_state_is_valid_to_read && diff_pointers;

    always_ff @(posedge clk ) begin
        start_next_state_o <= 0;
        fifo_rd_en_o       <= 0;
        next_state_is_valid_to_read <= (next_state != MOVE) && (next_state != START) && diff_pointers;

        if (!rst_n) begin
            fill_cnt      <= 0;
            win_base_ptr <= 0;
            wr_ptr         <= 0;
        end else begin
            case (current_state)
                START: begin
                    win_base_ptr <= 0;
                    fill_cnt <= frame_size - 1;
                    start_next_state_o <= 1;
                end
                MOVE: begin
                    if (win_base_ptr + frame_step >= frame_size) begin
                        win_base_ptr <= win_base_ptr + frame_step - frame_size;
                    end else begin
                        win_base_ptr <= win_base_ptr + frame_step;
                    end
                    fill_cnt <= frame_step - 1;
                    start_next_state_o <= 1;
                end
                REQUEST_DATA: begin
                    fifo_rd_en_o <= 1;
                end
                FILL: begin
                    buffer[wr_ptr] <= fifo_data_i;
                    if (wr_ptr == frame_size - 1) begin
                        wr_ptr <= 0;
                    end else begin
                        wr_ptr <= wr_ptr + 1;
                    end
                    fill_cnt <= fill_cnt - 1;
                    fifo_rd_en_o <= 1 & ~fifo_empty_i && fill_cnt != 1;
                end
                IDLE: begin
                    if (start_move) begin
                        fill_cnt <= 0;
                    end 
                end
            endcase
        end
    end

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            win_rd_idx <= 0;
            rd_phys_addr <= 0;
        end else begin

            if (addr_sum >= frame_size)
                rd_phys_addr <= addr_sum - frame_size;
            else
                rd_phys_addr <= addr_sum[PTR_WIDTH-1:0];

            if (rd_en_i && valid_to_read_o) begin
                if (win_rd_idx == frame_size - 1)
                    win_rd_idx <= 0;
                else
                    win_rd_idx <= win_rd_idx + 1;
            end
        end
    end


    assign read_data_o = buffer[rd_phys_addr];

endmodule