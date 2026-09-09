`timescale 1ns / 1ps
module hamming_tb ();
  localparam MAX_AUDIO_SIZE = 50177;
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
  localparam FFT_SIZE = 512;

  logic clk;
  logic rst_n;

  logic [WIDTH_MIC-1:0] samples[0:MAX_AUDIO_SIZE - 1];

  logic signed [WIDTH_MIC-1:0] pcm_in;
  logic signed [WIDTH-1:0] pre_emphasized_signal;
  logic pcm_ready_i;
  logic pre_emphasis_valid, pre_emphasis_valid_prev, pre_emphasis_valid_posedge;
  assign pre_emphasis_valid_posedge = ~pre_emphasis_valid_prev & pre_emphasis_valid;
  logic x_prev_valid;
  integer i, frame_id;

  assign x_prev_valid = ~(pre_emphasis_valid_posedge & (i != 2));

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

      .x_in(pcm_in),  
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

      .wr_en_i(pre_emphasis_valid & x_prev_valid),
      .rd_en_i(fifo_rd_en),

      .write_data_i(pre_emphasized_signal),
      .full_o      (fifo_full),
      .empty_o     (fifo_empty),
      .read_data_o (fifo_read_data)
  );

  logic [WIDTH-1:0] window_buffer_data;
  logic window_valid_to_read;
  logic window_rd_en;
  logic start_move;
  logic start_hamming;
  logic idle;
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

      .start_next_state_o(start_hamming),
      .idle_o(idle)

  );

  logic ok;
  logic hamming_done, hamming_out_valid;
  logic [8:0] frame_ptr;

  logic signed [WIDTH-1:0] hamming_sample;
  logic signed [WIDTH-1:0] hamming_frame[0:FFT_SIZE-1];

  hamming_window #(
      .N(WIDTH),
      .F(F_WIDTH),
      .NUM_COEFFICIENTS(FRAME_SIZE),
      .NFFT_SIZE(FFT_SIZE)
  ) u_hamming_window (
      .clk  (clk),
      .rst_n(rst_n),

      .start_i(start_hamming),

      .valid_to_read_i(window_valid_to_read),
      .rd_en_o(window_rd_en),

      .frame_ptr_o(frame_ptr),
      .frame_sample_i(window_buffer_data),
      .hamming_sample_o(hamming_sample),

      .out_valid_o(hamming_out_valid),
      .done_o(hamming_done)
  );

  always_ff @(posedge clk) begin
    if (hamming_out_valid) begin
      hamming_frame[frame_ptr] <= hamming_sample;
    end
  end

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
      dump_buffer_to_hex(frame_id);

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
          $display("Mismatch Window no frame %0d, índice %0d: teste=%h, referência=%h", frame_id, i,
                   test_val, ref_val);
          pass = 0;
        end
      end

      $fclose(fd_test);
      $fclose(fd_ref);
    end
  endtask

  task dump_hamming_to_hex(input int frame_id);
    integer fd;
    integer i;
    string  filename;
    begin
      filename = $sformatf({`TESTS_DIR, "/data/3_hamming_frames/%04d.hex"}, frame_id);

      fd = $fopen(filename, "w");
      if (fd) begin
        for (i = 0; i < FRAME_SIZE; i = i + 1) begin
          $fwrite(fd, "%h\n", hamming_frame[i]);
        end
        $fclose(fd);
      end else begin
        $display("Erro: não foi possível abrir o arquivo %s", filename);
      end
    end
  endtask

  task automatic check_hamming_frames(input int frame_id, output logic pass);
      integer fd_test, fd_ref;
      integer i;
      integer test_val, ref_val;
      string  test_filename, ref_filename;
      string  line;
      begin
          pass = 1; 

          test_filename = $sformatf({`TESTS_DIR, "/data/3_hamming_frames/%04d.hex"}, frame_id);
          ref_filename  = $sformatf({`TESTS_DIR, "/ref_vectors/3_hamming_frames/%04d.hex"}, frame_id);

          fd_test = $fopen(test_filename, "r");
          fd_ref  = $fopen(ref_filename, "r");

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
                  $display("Mismatch no frame %0d, índice %0d: teste=%h, referência=%h", frame_id, i, test_val, ref_val);
                  pass = 0;
              end
          end

          $fclose(fd_test);
          $fclose(fd_ref);
      end
  endtask


  initial begin
    $readmemh({`TESTS_DIR, "/ref_vectors/0_samples_dump.hex"}, samples);

    $dumpfile({`TESTS_DIR, "/build/hamming_tb.vcd"});

    $dumpvars(0, hamming_tb);

    $display("Iniciando teste de Hamming");

    rst_n = 0;
    clk   = 0;
    #4;
    rst_n = 1;

    $display("Iniciando processamento de áudio");

    for (frame_id = 0; frame_id < 24; frame_id++) begin

      wait (hamming_done);
      check_frames(frame_id, ok);
      wait (hamming_done);
      if (!ok)  $display("Falha na janela %0d", frame_id);

      dump_hamming_to_hex(frame_id);
      check_hamming_frames(frame_id, ok);
      if (!ok) 
        $display("Falha na comparação do frame %0d", frame_id);
      else
        $display("Sucesso na comparação do frame %0d", frame_id);

      #20;
    end

    #20;

    #2000;

    $finish;
  end

  always #1 clk = ~clk;


  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pcm_ready_i             <= 0;
      pcm_in                  <= 0;
      pre_emphasis_valid_prev <= 0;
    end else begin
      if (i < MAX_AUDIO_SIZE && !fifo_full) begin
        pcm_in      <= samples[i];
        pcm_ready_i <= 1;
        i           <= i + 1;
      end else begin
        pcm_ready_i <= 0;
      end

      if (fifo_full && pcm_ready_i) begin
        i <= i - 3;
      end
      pre_emphasis_valid_prev <= pre_emphasis_valid;
    end
  end

  assign start_move = hamming_done && u_window_buffer.current_state == 0;

endmodule
