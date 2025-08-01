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
    
    output logic                       start_next_state_o
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
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_state <= START;
        end else begin
            current_state <= next_state;
        end
    end

    always_comb begin
        next_state = current_state;

        unique case (current_state)
            IDLE: begin
                if (start_move) next_state = MOVE;
            end
            START: next_state = REQUEST_DATA;
            MOVE: next_state = REQUEST_DATA;
            REQUEST_DATA: if(!fifo_empty_i) next_state = FILL;
            FILL: begin 
                if (~|move_counter) 
                    next_state = IDLE;
                else if (fifo_empty_i) 
                    next_state = REQUEST_DATA;
                else
                    next_state = FILL;
            end
            default: next_state = current_state;
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        start_next_state_o <= 0;
        fifo_rd_en_o       <= 0;
        valid_to_read_o    <= (current_state != MOVE) && 
                                (current_state != START) && (read_ptr != write_ptr);

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

    always_ff @( posedge clk or negedge rst_n ) begin
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
