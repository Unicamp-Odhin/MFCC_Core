#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VPre_Emphasis.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 40 / 1 // segundos de simulação

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VPre_Emphasis *pre_emphasis = new VPre_Emphasis;
    
    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    
    pre_emphasis->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/pre_emphasis.vcd");
    
    
    // Inicializa sinais
    pre_emphasis->clk = 0;
    pre_emphasis->rst_n = 0;


    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        pre_emphasis->clk = !pre_emphasis->clk;
        pre_emphasis->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    pre_emphasis->rst_n = 1;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        pre_emphasis->clk = !pre_emphasis->clk;
        pre_emphasis->eval();
        trace->dump(i * CLOCK_PERIOD);
    }

    trace->close();
    delete pre_emphasis;
    delete trace;
    return 0;
}