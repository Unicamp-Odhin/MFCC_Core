#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VHamming_hamming.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 40 / 1 // segundos de simulação

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VHamming_hamming *hamming = new VHamming_hamming;
    
    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    
    hamming->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/hamming.vcd");
    
    
    // Inicializa sinais
    hamming->clk = 0;
    hamming->rst_n = 0;


    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        hamming->clk = !hamming->clk;
        hamming->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    hamming->rst_n = 1;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        hamming->clk = !hamming->clk;
        hamming->eval();
        trace->dump(i * CLOCK_PERIOD);
    }

    trace->close();
    delete hamming;
    delete trace;
    return 0;
}