`timescale 1ns/1ps

module window_buffer #(
    parameter WIDTH       = 16,
    parameter FRAME_SIZE  = 306,
    parameter MOVE_SIZE   = 123
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
    logic [WIDTH - 1:0] buffer [0:FRAME_SIZE - 1];
    int write_ptr;
    int internal_read_ptr;
    int read_ptr;

    typedef enum logic [2:0] {
        IDLE,
        START,
        MOVE,
        REQUEST_DATA,
        FILL
    } state_t;

    state_t current_state, next_state;
    int move_counter;

    // Controle de estados
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            current_state <= START;
        end else begin
            current_state <= next_state;
        end
    end

    logic move_counter_is_zero;
    assign move_counter_is_zero = ~|move_counter;

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
                if (move_counter_is_zero)
                    next_state = IDLE;
                else if (fifo_empty_i) 
                    next_state = REQUEST_DATA;
                else
                    next_state = FILL;
            end
            default: next_state = current_state;
        endcase
    end

    logic diff_pointers, next_state_is_valid_to_read;
    assign diff_pointers = (((read_ptr + internal_read_ptr) % FRAME_SIZE) != write_ptr);
    assign valid_to_read_o = next_state_is_valid_to_read && diff_pointers;

    always_ff @(posedge clk ) begin
        start_next_state_o <= 0;
        fifo_rd_en_o       <= 0;
        next_state_is_valid_to_read <= (next_state != MOVE) && (next_state != START) && diff_pointers;

        if (!rst_n) begin
            move_counter      <= 0;
            internal_read_ptr <= 0;
            write_ptr         <= 0;
        end else begin
            case (current_state)
                START: begin
                    internal_read_ptr  <= 0;
                    move_counter       <= FRAME_SIZE - 1;
                    start_next_state_o <= 1;
                end
                MOVE: begin
                    internal_read_ptr  <= (internal_read_ptr + MOVE_SIZE) % FRAME_SIZE;
                    move_counter       <= MOVE_SIZE - 1;
                    start_next_state_o <= 1;
                end
                REQUEST_DATA: begin
                    fifo_rd_en_o <= 1;
                end
                FILL: begin
                    buffer[write_ptr] <= fifo_data_i;
                    write_ptr         <= (write_ptr + 1) % FRAME_SIZE;
                    move_counter      <= move_counter - 1;
                    fifo_rd_en_o      <= 1 & ~fifo_empty_i && move_counter != 1;
                end
                IDLE: begin
                    if (start_move) begin
                        move_counter <= 0;
                    end 
                end
                default: begin
                    // No operation
                end
            endcase
        end
    end

    always_ff @( posedge clk ) begin
        if(!rst_n) begin
            read_ptr <= 0;
        end else begin
            if(rd_en_i && valid_to_read_o) begin
                read_ptr <= (read_ptr + 1) % FRAME_SIZE;
            end
        end
    end

    assign read_data_o = buffer[(read_ptr + internal_read_ptr) % FRAME_SIZE];

endmodule
