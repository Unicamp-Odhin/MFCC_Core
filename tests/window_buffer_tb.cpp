#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VWindow_Buffer.h"
#include "wav.h"
#include "process.h"

#define CLOCK_PERIOD 5 // 100 MHz -> 10 ns por ciclo
#define SIMULATION_CYCLES 4000 // ciclos de simulação


#define ALPHA 31785
#define FRAME_SIZE 0.025 // seconds
#define FRAME_STEP 0.01 // seconds


int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VWindow_Buffer *window = new VWindow_Buffer;
    
    VerilatedVcdC *trace = new VerilatedVcdC;
    Verilated::traceEverOn(true);

    window->trace(trace, 100);
    trace->set_time_unit("1ns");  // Define a resolução mínima de 1ns
    trace->open("build/window.vcd");
    
    int16_t *samples = NULL;
    WavHeader *header = open_wav_file("samples/dump03.wav", &samples);

    if (!header) {
        fprintf(stderr, "Failed to open WAV file: %s\n", "samples/dump03.wav");
        return 1;
    }

    int sample_rate = header->sampleRate;
    int frame_size  = (int)ceil(sample_rate * FRAME_SIZE);
    int frame_step  = (int)ceil(sample_rate * FRAME_STEP);
    int num_samples = header->subchunk2Size / sizeof(uint16_t);
    int num_frames;
    
    printf("Número total de frames: %d\n", num_frames);
    printf("Sample rate: %d Hz\n", sample_rate);
    printf("Frame size: %d samples\n", frame_size);
    printf("Frame step: %d samples\n", frame_step);
    printf("Number of samples: %d\n", num_samples);
    printf("Number of frames: %d\n", num_frames);
    int num_to_print = (num_samples < 20) ? num_samples : 20;
    printf("First 20 samples in sequence: ");
    for (int i = 0; i < num_to_print; i++) {
        printf("%d ", samples[i]);
    }
    printf("\n");
    
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), ALPHA);
    
    int32_t **frames = frame_signal_int((int16_t *)samples, num_samples, frame_size, frame_step, &num_frames);

    if (!frames) {
        fprintf(stderr, "Failed to create frames from samples.\n");
        free(samples);
        free(header);
        return 1;
    }
    
    // Inicializa sinais
    window->clk = 0;
    window->rst_n = 0;
    window->start_move = 0;
    //window->fifo_rd_en_o = 0;
    window->fifo_data_i = 0;
    window->fifo_empty_i = 0;
    window->fifo_full_i = 0;
    window->rd_en_i = 0;
    window->read_data_o = 0;
    window->valid_to_read_o = 0;

    // Reset
    int i = 0;
    for (i = 0; i < 10; i++) {
        window->clk = !window->clk;
        window->eval();
        trace->dump(i * CLOCK_PERIOD);
    }
    window->rst_n = 1;
    window->start_move = 1; // Inicia o movimento do buffer

    int sample_index = 0;

    // Simulação
    for (; i < SIMULATION_CYCLES; i++) {
        window->clk = !window->clk;

        if(window->fifo_rd_en_o){
            window->fifo_data_i = samples[sample_index];
            sample_index++;
            if (sample_index >= num_samples) {
                sample_index = 0; // Reinicia o índice se exceder o número de amostras
            }
        }
        
        window->eval();
        trace->dump(i * CLOCK_PERIOD);

        window->start_move = 0; // Continua o movimento do buffer
    }

    trace->close();
    delete window;
    delete trace;
    return 0;
}