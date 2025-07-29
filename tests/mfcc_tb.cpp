#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VMFCC_Core.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 40 / 1 // segundos de simulação

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VMFCC_Core *mfcc = new VMFCC_Core;
    
    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    
    mfcc->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/mfcc.vcd");
    
    
    // Inicializa sinais
    mfcc->clk = 0;
    mfcc->rst_n = 0;


    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        mfcc->clk = !mfcc->clk;
        mfcc->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    mfcc->rst_n = 1;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        mfcc->clk = !mfcc->clk;
        mfcc->eval();
        trace->dump(i * CLOCK_PERIOD);
    }

    trace->close();
    delete mfcc;
    delete trace;
    return 0;
}