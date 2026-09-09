`timescale 1ns / 1ps
module window_buffer_tb ();

  localparam MAX_AUDIO_SIZE = 4001;
  localparam SAMPLE_RATE = 16000;
  localparam WIDTH_MIC = 16;
  localparam WIDTH = 64;
  localparam F_WIDTH = 16;
  localparam PCM_FIFO_DEPTH = 2048;
  localparam FRAME_SIZE_T = 0.025;
  localparam FRAME_STEP_T = 0.01;
  localparam FRAME_SIZE = $rtoi(SAMPLE_RATE * FRAME_SIZE_T);
  localparam FRAME_STEP = $rtoi(SAMPLE_RATE * FRAME_STEP_T);
  localparam ALPHA = $rtoi(0.97 * (1 << F_WIDTH));

  localparam EXPECTED_PTR_1 = FRAME_STEP;
  localparam EXPECTED_PTR_2 = (FRAME_STEP * 2) % FRAME_SIZE;
  localparam EXPECTED_PTR_3 = (FRAME_STEP * 3) % FRAME_SIZE;

  logic clk;
  logic rst_n;

  logic [WIDTH_MIC-1:0] samples[0:MAX_AUDIO_SIZE - 1];

  logic signed [WIDTH_MIC-1:0] pcm_in;
  logic signed [WIDTH-1:0] pre_emphasized_signal;
  logic pcm_ready_i;
  logic pre_emphasis_valid;

  pre_emphasis #(
      .WIDTH_IN(WIDTH_MIC),
      .WIDTH_OUT(WIDTH),
      .F(F_WIDTH),
      .ALPHA(ALPHA)
  ) u_pre_emphasis (
      .clk  (clk),
      .rst_n(rst_n),

      .in_valid (pcm_ready_i),
      .out_valid(pre_emphasis_valid),

      .x_in (pcm_in),
      .y_out(pre_emphasized_signal)
  );


  logic fifo_empty, fifo_full, fifo_rd_en;
  logic [WIDTH-1:0] fifo_read_data;

  fifo #(
      .DEPTH(PCM_FIFO_DEPTH),
      .WIDTH(WIDTH)
  ) tx_fifo (
      .clk  (clk),
      .rst_n(rst_n),

      .wr_en_i(pre_emphasis_valid),
      .rd_en_i(fifo_rd_en),

      .write_data_i(pre_emphasized_signal),
      .full_o(fifo_full),
      .empty_o(fifo_empty),
      .read_data_o(fifo_read_data)
  );

  logic [WIDTH-1:0] window_buffer_data;
  logic window_valid_to_read;
  logic window_rd_en;
  logic start_move;
  logic start_hamming;
  logic window_done;

  window_buffer #(
      .WIDTH(WIDTH),
      .FRAME_SIZE(FRAME_SIZE),
      .FRAME_STEP(FRAME_STEP)
  ) u_window_buffer (
      .clk  (clk),
      .rst_n(rst_n),

      .start_move(start_move),

      .fifo_rd_en_o(fifo_rd_en),
      .fifo_data_i (fifo_read_data),
      .fifo_empty_i(fifo_empty),

      .rd_en_i(window_rd_en),
      .read_data_o(window_buffer_data),
      .valid_to_read_o(window_valid_to_read),
      .done_o(window_done),

      .start_next_state_o(start_hamming)
  );

  task dump_buffer_to_hex(integer frame_id);
    integer fd;
    integer i, addr, base_addr;
    string filename;
    base_addr = (frame_id * FRAME_STEP) % FRAME_SIZE;

    begin
      filename = $sformatf({`TESTS_DIR, "/data/2_frames/%04d.hex"}, frame_id);

      fd = $fopen(filename, "w");

      for (i = base_addr; i < FRAME_SIZE + base_addr; i = i + 1) begin
        addr = i % FRAME_SIZE;
        $fwrite(fd, "%H\n", u_window_buffer.buffer[addr]);
      end
      $fclose(fd);
    end
  endtask

  task automatic check_frames(input int frame_id, output logic pass);
    integer fd_test, fd_ref;
    integer i;
    integer test_val, ref_val;
    string test_filename, ref_filename;
    string line;
    begin
      pass = 1;

      test_filename = $sformatf({`TESTS_DIR, "/data/2_frames/%04d.hex"}, frame_id);
      ref_filename = $sformatf({`TESTS_DIR, "/ref_vectors/2_frames/%04d.hex"}, frame_id);

      fd_test = $fopen(test_filename, "r");
      fd_ref = $fopen(ref_filename, "r");

      if (fd_test == 0) begin
        $display("Erro: não foi possível abrir arquivo de teste %s", test_filename);
        pass = 0;
        return;
      end
      if (fd_ref == 0) begin
        $display("Erro: não foi possível abrir arquivo de referência %s", ref_filename);
        $fclose(fd_test);
        pass = 0;
        return;
      end

      for (i = 0; i < FRAME_SIZE; i++) begin
        // teste
        if ($fgets(line, fd_test) == 0) begin
          $display("Erro: EOF inesperado no arquivo de teste na linha %0d", i);
          pass = 0;
          break;
        end
        if ($sscanf(line, "%h", test_val) != 1) begin
          $display("Erro: formato inválido no arquivo de teste na linha %0d: %s", i, line);
          pass = 0;
          break;
        end

        //referência
        if ($fgets(line, fd_ref) == 0) begin
          $display("Erro: EOF inesperado no arquivo de referência na linha %0d", i);
          pass = 0;
          break;
        end
        if ($sscanf(line, "%h", ref_val) != 1) begin
          $display("Erro: formato inválido no arquivo de referência na linha %0d: %s", i, line);
          pass = 0;
          break;
        end

        if (test_val !== ref_val) begin
          $display("Mismatch no frame %0d, índice %0d: teste=%h, referência=%h", frame_id, i,
                   test_val, ref_val);
          pass = 0;
        end
      end

      $fclose(fd_test);
      $fclose(fd_ref);
    end
  endtask

  integer frame_id, expected_ptr;
  logic ok;

  initial begin
    $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);
    $dumpfile({`TESTS_DIR, "/build/window_buffer_tb.vcd"});
    $dumpvars(0, window_buffer_tb);

    $display("Iniciando teste de Window Buffer");

    start_move = 0;
    window_rd_en = 1;
    rst_n = 0;
    clk = 0;
    @(posedge clk);
    @(posedge clk);
    rst_n = 1;
    start_move = 1;
    @(posedge clk);
    @(posedge clk);
    start_move = 0;

    $display("Iniciando processamento de áudio");
    #(1000);

    wait (u_window_buffer.current_state == 0);

    if (u_window_buffer.rd_phys_addr == 0) $display("\tPonteiro win_base_ptr: OK");
    else begin
      $error("Erro: rd_phys_addr está na posição errada. %d, esperada: %d",
             u_window_buffer.rd_phys_addr, 0);
      $finish;
    end

    if (u_window_buffer.wr_ptr == 0) $display("\tPonteiro wr_ptr: OK");
    else begin
      $error("Erro: wr_ptr não está zerado após o encher o buffer pela primeira vez. %d",
             u_window_buffer.wr_ptr);
      $finish;
    end

    dump_buffer_to_hex(0);

    for (frame_id = 1; frame_id <= 22; frame_id++) begin
      $display("Iniciando movimento numero %d do buffer", frame_id);
      expected_ptr = (frame_id * FRAME_STEP) % FRAME_SIZE;
      #20;

      start_move = 1;
      #2 start_move = 0;

      wait (window_done);

      if (u_window_buffer.win_base_ptr == expected_ptr) $display("\tPonteiro win_base_ptr: OK");
      else begin
        $error("Erro: win_base_ptr está na posição errada. %d, esperada: %d",
               u_window_buffer.win_base_ptr, expected_ptr);
        $finish;
      end

      #20;

      wait (u_window_buffer.current_state == 0);

      // if (u_window_buffer.wr_ptr == expected_ptr) $display("\tPonteiro wr_ptr: OK");
      // else begin
      //   $error("Erro: wr_ptr não está correto após o segundo movimento. %d, esperada: %d",
      //          u_window_buffer.wr_ptr, expected_ptr);
      //   $finish;
      // end

      dump_buffer_to_hex(frame_id);
      check_frames(frame_id, ok);
      if (!ok) $display("Comparação dos dumps: FALHA");
      else $display("\tComparação dos dumps: OK");
      #20;

    end

    #20;

    $finish;
  end

  integer i;

  always #1 clk = ~clk;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pcm_ready_i <= 0;
      pcm_in      <= 0;
    end else begin
      if (i < MAX_AUDIO_SIZE && !fifo_full) begin
        pcm_in      <= samples[i];
        pcm_ready_i <= 1;
        i           <= i + 1;
      end else begin
        pcm_ready_i <= 0;
      end
    end
  end

endmodule
