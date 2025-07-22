#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VMEL.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 40 / 1 // segundos de simulação

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VMEL *mel = new VMEL;
    
    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    
    mel->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/mel.vcd");
    
    
    // Inicializa sinais
    mel->clk = 0;
    mel->rst_n = 0;


    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        mel->clk = !mel->clk;
        mel->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    mel->rst_n = 1;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        mel->clk = !mel->clk;
        mel->eval();
        trace->dump(i * CLOCK_PERIOD);
    }

    trace->close();
    delete mel;
    delete trace;
    return 0;
}