#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VFFT.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 40 / 1 // segundos de simulação

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VFFT *fft = new VFFT;
    
    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);
    
    fft->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/fft.vcd");
    
    
    // Inicializa sinais
    fft->clk = 0;
    fft->rst_n = 0;


    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        fft->clk = !fft->clk;
        fft->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    fft->rst_n = 1;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        fft->clk = !fft->clk;
        fft->eval();
        trace->dump(i * CLOCK_PERIOD);
    }

    trace->close();
    delete fft;
    delete trace;
    return 0;
}