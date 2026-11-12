`timescale 1ns / 1ps

module window_buffer #(
    parameter WIDTH      = 64,
    parameter FRAME_SIZE = 400,
    parameter FRAME_STEP = 160
) (
    input logic clk,
    input logic rst_n,

    // Control signals
    input logic start_move,

    // FIFO Interface
    output logic             fifo_rd_en_o,
    input  logic [WIDTH-1:0] fifo_data_i,
    input  logic             fifo_empty_i,

    // Read Interface
    input  logic             rd_en_i,
    output logic [WIDTH-1:0] read_data_o,
    output logic             valid_to_read_o,
    output logic             done_o,

    output logic start_next_state_o,
    output logic idle_o
);
  logic [WIDTH-1:0] buffer[0:FRAME_SIZE-1];

  localparam int PTR_WIDTH = $clog2(FRAME_SIZE);
  logic [PTR_WIDTH-1:0] frame_size, frame_step;
  logic [PTR_WIDTH-1:0] wr_ptr;  // ponteiro de escrita no buffer circular 
  logic [PTR_WIDTH-1:0] win_rd_idx;  // indice sequencial dentro da janela atual
  logic [PTR_WIDTH-1:0] win_base_ptr;  // endereço base da janela
  logic [PTR_WIDTH-1:0] rd_phys_addr;  // De fato onde a sample está no buffer

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

  logic [PTR_WIDTH:0] addr_sum;
  logic diff_pointers;
  assign addr_sum = win_base_ptr + win_rd_idx;

  assign diff_pointers = rd_phys_addr != wr_ptr;

  
  // Controle de estados
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      current_state <= START;
    end else begin
      current_state <= next_state;
    end
  end

  always_comb begin
    idle_o = 0;
    done_o = 0;
    unique case (current_state)
      IDLE: begin
        idle_o = 1;
        if (start_move) next_state = MOVE;
      end
      START: next_state = REQUEST_DATA;
      MOVE: begin
        if (!fifo_empty_i) begin
          next_state = FILL;
        end else begin
          next_state = REQUEST_DATA;
        end
      end 
      REQUEST_DATA: begin
        if (!fifo_empty_i) begin
          next_state = FILL;
        end else begin
          next_state = REQUEST_DATA;
        end
      end
      FILL: begin
        if (win_rd_idx == (frame_size - 1)) begin
          next_state = IDLE;
          done_o = 1;
        end
        else if (fifo_empty_i) next_state = REQUEST_DATA;
        else next_state = FILL;
      end
      default: next_state = current_state;
    endcase
  end


  always_ff @(posedge clk) begin
    start_next_state_o          <= 0;
    fifo_rd_en_o                <= 0;

    if (!rst_n) begin
      win_base_ptr <= 0;
      wr_ptr       <= 0;
      win_rd_idx   <= 0;
      rd_phys_addr <= '0;
     valid_to_read_o <= '0;
    end else begin
      rd_phys_addr <= (addr_sum >= frame_size) ? (addr_sum - frame_size) : addr_sum[PTR_WIDTH-1:0];
      valid_to_read_o <= '0;
      
      case (current_state)
        START: begin
          win_base_ptr <= 0;
          start_next_state_o <= 1;
        end
        MOVE: begin
          if (win_base_ptr + frame_step >= frame_size) begin
            win_base_ptr <= win_base_ptr + frame_step - frame_size;
          end else begin
            win_base_ptr <= win_base_ptr + frame_step;
          end
          start_next_state_o <= 1;
          fifo_rd_en_o <= ~fifo_empty_i && (win_rd_idx != frame_size - 1);
        end
        REQUEST_DATA: begin
          fifo_rd_en_o <= 1;
        end
        FILL: begin
          
          buffer[wr_ptr] <= fifo_data_i;
          wr_ptr <= wr_ptr + 1;

          valid_to_read_o <= 1'b1;
          win_rd_idx <= win_rd_idx + 1;
          fifo_rd_en_o <= ~fifo_empty_i && (win_rd_idx != frame_size - 1);
        end
        IDLE: begin
          if (start_move) begin
            wr_ptr <= 0;
            win_rd_idx <= 0;
          end
        end
      endcase
    end
  end

  assign read_data_o = buffer[rd_phys_addr];

endmodule