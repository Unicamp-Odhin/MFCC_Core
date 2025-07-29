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

# se nome do teste for fifo
if [ "$nome_do_teste" = "fifo" ]; then
   run_fifo_test
elif [ "$nome_do_teste" = "log" ]; then
   run_log_test
elif [ "$nome_do_teste" = "window_buffer" ]; then
   run_window_buffer_test
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
    echo "  help              - Exibe esta mensagem de ajuda"
    echo "  all               - Executa todos os testes"
    echo "  clean             - Limpa arquivos temporários"
    echo "  <nome_do_teste>   - Executa o teste especificado"
    echo "Exemplo: ./run_simulation.sh fifo"
else
    echo "Teste desconhecido: $nome_do_teste"
fi

exit 0