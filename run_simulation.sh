#!/bin/zsh

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

function run_window_buffer_test {
    echo "Executando teste Window Buffer"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module Window_Buffer tests/window_buffer_tb.cpp rtl/window_buffer.sv src/wav.c src/process.c --CFLAGS "-I../lib"
   ./obj_dir/VWindow_Buffer
}

function run_hamming_test {
    echo "Executando teste Hamming"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module Hamming_Window tests/hamming_tb.cpp rtl/hamming.sv src/wav.c src/process.c --CFLAGS "-I../lib"
   ./obj_dir/Hamming_Window
}

function run_fft_test {
    echo "Executando teste FFT"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module FFT tests/fft_tb.cpp rtl/fft.sv src/wav.c src/process.c src/q15.c src/q15_fft.c --CFLAGS "-I../lib"
   ./obj_dir/VFFT
}

function run_mel_test {
    echo "Executando teste Mel"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module MEL tests/mel_tb.cpp rtl/mel.sv src/wav.c src/process.c src/q15.c src/q15_fft.c src/mel.c --CFLAGS "-I../lib"
   ./obj_dir/VMEL
}

function run_dct_test {
    echo "Executando teste DCT"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module DCT tests/dct_tb.cpp rtl/dct.sv src/wav.c src/process.c src/q15.c src/q15_fft.c src/mel.c src/dct.c --CFLAGS "-I../lib"
   ./obj_dir/VDCT
}

function run_mfcc_test {
    echo "Executando teste MFCC"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module MFCC tests/mfcc_tb.cpp \
    rtl/mfcc.sv rtl/fft.sv rtl/dct.sv rtl/mel.sv rtl/base2log.sv rtl/hamming.sv rtl/pre_emphasis.sv rtl/window_buffer.sv \
    src/wav.c src/process.c src/q15.c src/q15_fft.c src/mel.c src/dct.c --CFLAGS "-I../lib"
   ./obj_dir/VMFCC
}

# se nome do teste for fifo
if [ "$nome_do_teste" = "fifo" ]; then
   run_fifo_test
elif [ "$nome_do_teste" = "log" ]; then
   run_log_test
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
    run_window_buffer_test
elif [ "$nome_do_teste" = "clean" ]; then
    echo "Limpando arquivos temporários..."
    cleanup
elif [ "$nome_do_teste" = "help" ]; then
    echo "Ajuda: Testes disponíveis:"
    echo "  fifo              - Teste FIFO"
    echo "  log               - Teste Log"
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