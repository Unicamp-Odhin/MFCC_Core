#!/bin/zsh

mkdir -p build

# Verifica se um argumento foi passado, caso contrário executa read
if [ -z "$1" ]; then
    echo "Digite o nome do teste:"
    read nome_do_teste
else
    nome_do_teste=$1
fi

# se nome do teste for fifo
if [ "$nome_do_teste" = "fifo" ]; then
    echo "Executando teste FIFO"
    verilator tests/fifo_tb.sv rtl/fifo.sv -Wall --assert -j 0 --timing --trace-structs --binary -Wno-fatal --trace
   ./obj_dir/Vfifo_tb
elif [ "$nome_do_teste" = "log" ]; then
    echo "Executando teste Log"
    verilator tests/base2log_tb.sv rtl/base2log.sv -Wall --assert -j 0 --timing --trace-structs --binary -Wno-fatal --trace
   ./obj_dir/Vbase2log_tb
elif [ "$nome_do_teste" = "window_buffer" ]; then
    echo "Executando teste Window Buffer"
    verilator --cc --exe --build --trace --timing --timescale 1ns/1ps --top-module Window_Buffer tests/window_buffer_tb.cpp rtl/window_buffer.sv src/wav.c src/process.c --CFLAGS "-I../lib"
   ./obj_dir/VWindow_Buffer
else
    echo "Teste desconhecido: $nome_do_teste"
fi