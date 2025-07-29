#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VDCT.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 40 / 1 // segundos de simulação

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VDCT *dct = new VDCT;

    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    
    dct->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/dct.vcd");
    
    
    // Inicializa sinais
    dct->clk = 0;
    dct->rst_n = 0;


    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        dct->clk = !dct->clk;
        dct->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    dct->rst_n = 1;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        dct->clk = !dct->clk;
        dct->eval();
        trace->dump(i * CLOCK_PERIOD);
    }

    trace->close();
    delete dct;
    delete trace;
    return 0;
}