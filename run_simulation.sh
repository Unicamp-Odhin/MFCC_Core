#!/usr/bin/env bash


mkdir -p build

# Verifica se um argumento foi passado, caso contrário executa read
if [ -z "$1" ]; then
   echo "Digite o nome do teste:"
   read nome_do_teste
else
   nome_do_teste=$1
fi

function cleanup {
   echo "Limpando arquivos temporários..."
   rm -rf obj_dir
   rm -rf build
}

function run_fifo_test {
   echo "Executando teste FIFO"
   verilator tests/fifo_tb.sv rtl/fifo.sv -Wall --assert -j 0 --timing --trace-structs --binary -Wno-fatal --trace
   ./obj_dir/Vfifo_tb
}

function run_log_test {
   echo "Executando teste Log"
   verilator tests/base2log_tb.sv rtl/base2log.sv -Wall --assert -j 0 --timing --trace-structs --binary -Wno-fatal --trace
   ./obj_dir/Vbase2log_tb
}

function run_pre_emphasis_test {
   echo "Executando teste Pre emphasis"
   verilator tests/pre_emphasis_tb.sv rtl/pre_emphasis.sv -DTESTS_DIR=\"${TESTS_DIR}\" -Wall --assert --language 1800-2017  \
      --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique
   ./obj_dir/Vpre_emphasis_tb 
}

function run_window_buffer_test {
   echo "Executando teste Window Buffer"
   verilator tests/window_buffer_tb.sv rtl/pre_emphasis.sv rtl/fifo.sv rtl/window_buffer.sv -DTESTS_DIR=\"${TESTS_DIR}\" -Wall --assert --language 1800-2017  \
      --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique
   ./obj_dir/Vwindow_buffer_tb
}

function run_hamming_test {
   echo "Executando teste Hamming"
   verilator tests/hamming_tb.sv rtl/pre_emphasis.sv rtl/fifo.sv rtl/window_buffer.sv rtl/hamming_window.sv -DTESTS_DIR=\"${TESTS_DIR}\" -Wall --assert --language 1800-2017  \
      --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique
   ./obj_dir/Vhamming_tb
}

function run_fft_test {
   echo "Executando teste FFT"
   verilator tests/fft_tb.sv rtl/complex_pkg.sv rtl/pre_emphasis.sv rtl/fifo.sv rtl/window_buffer.sv rtl/hamming_window.sv rtl/fft_radix2.sv -DTESTS_DIR=\"${TESTS_DIR}\" \
      -Wall --assert --language 1800-2017 --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique
   ./obj_dir/Vfft_tb
}

function run_mel_test {
   echo "Executando teste Mel"
   verilator tests/mel_tb.sv rtl/mel.sv rtl/base2log.sv -DTESTS_DIR=\"${TESTS_DIR}\" \
      -Wall --assert --language 1800-2017 --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique
   ./obj_dir/Vmel_tb
}

function run_dct_test {
   echo "Executando teste DCT"
   verilator tests/dct_tb.sv rtl/pre_emphasis.sv rtl/base2log.sv rtl/fifo.sv rtl/window_buffer.sv rtl/hamming_window.sv rtl/fft_radix2.sv rtl/mel.sv rtl/dct.sv \
      -Wall --assert --language 1800-2017 --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique
   ./obj_dir/Vdct_tb
}

function run_mfcc_test {
   echo "Executando teste MFCC"
   verilator tests/mfcc_tb.sv rtl/base2log.sv rtl/pre_emphasis.sv rtl/fifo.sv rtl/window_buffer.sv rtl/hamming_window.sv rtl/fft_radix2.sv rtl/mel.sv rtl/dct.sv rtl/MFCC_Core.sv \
      -Wall --assert --language 1800-2017 --timing --trace-structs --binary -Wno-fatal -j 0 --trace-fst --x-assign unique --x-initial unique --top-module mfcc_tb
   ./obj_dir/Vmfcc_tb
}

# se nome do teste for fifo
if [ "$nome_do_teste" = "fifo" ]; then
   run_fifo_test
elif [ "$nome_do_teste" = "log" ]; then
   run_log_test
elif [ "$nome_do_teste" = "pre_emphasis" ]; then
   run_pre_emphasis_test
elif [ "$nome_do_teste" = "window_buffer" ]; then
   run_window_buffer_test
elif [ "$nome_do_teste" = "hamming" ]; then
   run_hamming_test
elif [ "$nome_do_teste" = "fft" ]; then
   run_fft_test
elif [ "$nome_do_teste" = "mel" ]; then
   run_mel_test
elif [ "$nome_do_teste" = "dct" ]; then
   run_dct_test
elif [ "$nome_do_teste" = "mfcc" ]; then
   run_mfcc_test
elif [ "$nome_do_teste" = "all" ]; then
   run_fifo_test
   run_log_test
   run_pre_emphasis_test
   run_window_buffer_test
   run_hamming_test
   run_fft_test
   run_mel_test
   run_dct_test
   run_mfcc_test
   echo "Todos os testes foram executados."
elif [ "$nome_do_teste" = "clean" ]; then
   echo "Limpando arquivos temporários..."
   cleanup
elif [ "$nome_do_teste" = "help" ]; then
   echo "Ajuda: Testes disponíveis:"
   echo "  fifo              - Teste FIFO"
   echo "  log               - Teste Log"
   echo "  pre_emphasis      - Teste Pre Emphasis"
   echo "  window_buffer     - Teste Window Buffer"
   echo "  hamming           - Teste Hamming"
   echo "  fft               - Teste FFT"
   echo "  mel               - Teste Mel"
   echo "  dct               - Teste DCT"
   echo "  mfcc              - Teste MFCC"
   echo "  help              - Exibe esta mensagem de ajuda"
   echo "  all               - Executa todos os testes"
   echo "  clean             - Limpa arquivos temporários"
   echo "  <nome_do_teste>   - Executa o teste especificado"
   echo "Exemplo: ./run_simulation.sh fifo"
else
   echo "Teste desconhecido: $nome_do_teste"
fi

exit 0