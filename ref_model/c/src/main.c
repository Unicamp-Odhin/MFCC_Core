#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include "wav.h"
#include "process.h"
#include "fft_fp.h"
#include "mel.h"
#include "dct.h"
#include <time.h>
#ifdef __x86_64__
	#include <x86intrin.h>
#endif

#include <sys/stat.h>
#include <sys/types.h>


#define FRAME_SIZE 0.025 // seconds
#define FRAME_STEP 0.01 // seconds

int ensure_dir(const char *path) {
    struct stat st;

    if (stat(path, &st) == -1) {
        if (mkdir(path, 0755) != 0) {
            perror(path);
            return -1;
        }
    }
    return 0;
}

int create_dirs(void) {
    if (ensure_dir("tables_to_rtl") != 0) return -1;
    if (ensure_dir("dumps") != 0) return -1;
    if (ensure_dir("dumps") != 0) return -1;
    if (ensure_dir("dumps/plots") != 0) return -1;
    if (ensure_dir("dumps/2_frames") != 0) return -1;
    if (ensure_dir("dumps/3_hamming_frames") != 0) return -1;
    if (ensure_dir("dumps/4_power_spectrum") != 0) return -1;
    if (ensure_dir("dumps/5_energies") != 0) return -1;
    if (ensure_dir("dumps/6_ceps") != 0) return -1;
    
    return 0;
}

void dump_buffer_unsigned(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%u\n", buffer[i]);
    }
    fclose(fp);
}

void dump_buffer_to_hex_16(const char *file_name, int16_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        int16_t temp = buffer[i];
        fprintf(fp, "%04x\n", (uint16_t)temp);
    }
    fclose(fp);
}

void dump_buffer_to_hex_32(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%08x\n", buffer[i]);
    }
    fclose(fp);
}

void dump_buffer_pf_to_int(const char *file_name, int32_t *buffer, int size, int F) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%x\n", buffer[i] >> F);
    }
    fclose(fp);
}
void dump_buffer_pf_64_to_float(const char *file_name, int64_t *buffer, int size, int F) {
    int32_t SCALE = 1 << F;
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%f\n", (float)buffer[i] / SCALE);
    }
    fclose(fp);
}

void dump_buffer_pf_to_float(const char *file_name, int32_t *buffer, int size, int F) {
    int32_t SCALE = 1 << F;
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%f\n", (float)buffer[i] / SCALE);
    }
    fclose(fp);
}

unsigned long long get_cycles() {
#ifdef __x86_64__
    return __rdtsc();  
#elif defined(__arm__) || defined(__aarch64__)
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts); 
    return ts.tv_sec * 1000000000LL + ts.tv_nsec; 
#else
    return 0;
#endif
}

int main(int argc, char *argv[]) {

    clock_t start_time = clock();
    unsigned long long start_cycles = get_cycles();


    if (argc < 7) {
        fprintf(stderr, "Usage: %s <filename>.wav F_PRE_EMPHASIS F_HAMMING F_FFT MEL_COEFF_WIDTH_F DCT_COEFF_WIDTH_F\n", argv[0]);
        return 1;
    }

    int16_t *samples = NULL;
    WavHeader *header = open_wav_file(argv[1], &samples);
    int F_PRE_EMPHASIS = atoi(argv[2]); 
    int F_HAMMING = atoi(argv[3]); 
    int F_FFT =  atoi(argv[4]); 
    int MEL_COEFF_WIDTH_F =  atoi(argv[5]); 
    int DCT_COEFF_WIDTH_F = atoi(argv[6]);
    
    if (!header) {
        fprintf(stderr, "Failed to open WAV file: %s\n", argv[1]);
        return 1;
    }

    if (create_dirs()) return -1;


    int sample_rate = header->sampleRate;
    int frame_size  = (int)(sample_rate * FRAME_SIZE);
    int frame_step  = (int)(sample_rate * FRAME_STEP);
    int num_samples = header->subchunk2Size / sizeof(uint16_t);
    int num_frames = (int)((double)(num_samples - frame_size) / frame_step) + 1;
    
    #ifdef CONFIG_VERBOSE 
    printf("Número total de frames: %d\n", num_frames);
    printf("Sample rate: %d Hz\n", sample_rate);
    printf("Frame size: %d samples\n", frame_size);
    printf("Frame step: %d samples\n", frame_step);
    printf("Number of samples: %d\n", num_samples);
    #endif
    
    
    #ifdef CONFIG_LOG 
    dump_buffer_to_hex_16("dumps/0_samples_dump.hex", samples, num_samples);
    
    char *samples_dir = getenv("SAMPLES_DIR");
    char filepath_samples[512];
    snprintf(filepath_samples, sizeof(filepath_samples), "%s/dump.hex", samples_dir);
    dump_buffer_to_hex_16(filepath_samples, samples, num_samples);
    
    #endif
    
    
    int64_t *samples_64bit = malloc(sizeof(int64_t) * num_samples);
    //PRIMEIRA ETAPA "pre enfase"
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), samples_64bit, F_PRE_EMPHASIS);
    #ifdef CONFIG_LOG 
        char *c_dir = getenv("REF_C_DIR");
        char filepath_pre_emfase[512];
        snprintf(filepath_pre_emfase, sizeof(filepath_pre_emfase), "%s/dumps/1_pre_emphasis.hex", c_dir);
        dump_buffer_pf_64_to_float(filepath_pre_emfase, samples_64bit, num_samples, F_PRE_EMPHASIS);
        
    #endif


    //SEGUNDA ETAPA "enquadramento

    // Pode haver inconsistência no cálculo de frame_step devido a arredondamentos.
    // Isso pode levar à geração de frames levemente diferentes ao longo do tempo,
    // acumulando um erro perceptível no resultado final.

    int64_t **frames = frame_signal_int(samples_64bit, num_samples, frame_size, frame_step, &num_frames);
    #ifdef CONFIG_LOG
        for (int i = 0; i < num_frames; i++) {
            char file_name[64];
            snprintf(file_name, sizeof(file_name), "dumps/2_frames/%04d.hex", i);
            dump_buffer_pf_64_to_float(file_name, frames[i], frame_size, F_PRE_EMPHASIS);
        }
    #endif

    //TERCEIRA ETAPA "janelamento"
    int32_t window[frame_size];
    generate_hamming_window(window, frame_size, F_HAMMING);

    for(int i = 0; i < num_frames; i++) {
        hamming_window_fixed(frames[i], window, frame_size, F_HAMMING, F_PRE_EMPHASIS);
    }

    #ifdef CONFIG_CREATE_DATABANK
        char filepath[512];
        char *tables_dir = getenv("TABLES_DIR");
        snprintf(filepath, sizeof(filepath), "%s/hamming_window.hex", tables_dir);
        save_window_to_file(filepath, window, frame_size);
    #endif
    
    #ifdef CONFIG_LOG
        for(int i = 0; i < num_frames; i++) {
            char file_name[50];
            snprintf(file_name, sizeof(file_name), "dumps/3_hamming_frames/%04d.hex", i);
            dump_buffer_pf_64_to_float(file_name, frames[i], frame_size, F_HAMMING);
        }
    #endif

    //QUARTA ETAPA FFT

    int num_freqs = NFFT; // Frequências DC a Nyquist, NFFT é definido no q15_fft.h
    // int64_t power_spectrum[num_frames][num_freqs]; // transposição do espectro de potência
    int64_t **power_spectrum = (int64_t**)malloc(num_frames * sizeof(int64_t*));
    
    complex_t* twiddles = (complex_t*)malloc((NFFT / 2) * sizeof(complex_t));
    generate_twiddles(twiddles, NFFT, F_FFT);  

    for(int i = 0; i < num_frames; i++) {
        power_spectrum[i] = (int64_t*)malloc(num_freqs * sizeof(int64_t));
        power_spectrum[i][0] = 0; // DC é zero
        fft_real_power(frames[i], frame_size, power_spectrum[i], twiddles, F_FFT, F_HAMMING);
    }

    #ifdef CONFIG_CREATE_DATABANK
        char filepath_twiddles[512];
        // char *tables_dir = getenv("TABLES_DIR");
        snprintf(filepath_twiddles, sizeof(filepath_twiddles), "%s/twiddles.hex", tables_dir);
        save_twiddles_to_file(filepath_twiddles, twiddles, NFFT);
    #endif  
    free(twiddles);


    
    #ifdef CONFIG_LOG
        for (int i = 0; i < num_frames; i++) {
            char filename[128];
            snprintf(filename, sizeof(filename), "dumps/4_power_spectrum/%04d.hex", i);
            dump_buffer_pf_64_to_float(filename, power_spectrum[i], NFFT/2 + 1, F_FFT);
        }
    #endif



    //QUINTA ETAPA Banco de filtros + DCT (cepstrais)

    int32_t energies[NUM_FILTERS];
    
    #ifdef CONFIG_LOG
    FILE *fp_ceps = fopen("dumps/plots/ceps_matrix.dat", "w");
    if (!fp_ceps) perror("Erro ao criar ceps_matrix.dat");
    
    FILE *fp_spec = fopen("dumps/plots/spectrogram_matrix.dat", "w");
    if (!fp_spec) perror("Erro ao criar spectrogram_matrix.dat");
    #endif
    
    
    int ENERGIES_WIDTH_F = 13;

    int32_t **filterbank = malloc(NUM_FILTERS * sizeof(int32_t*));
    int16_t max_width_mel = create_op_filterbank(filterbank, sample_rate, MEL_COEFF_WIDTH_F);

    for (int i = 0; i < num_frames; i++) {
        apply_op_filterbank(power_spectrum[i], energies, sample_rate, filterbank, MEL_COEFF_WIDTH_F, ENERGIES_WIDTH_F, F_FFT);
        
        #ifdef CONFIG_LOG
        char energy_file[64];
        snprintf(energy_file, sizeof(energy_file), "dumps/5_energies/%04d.hex", i);
        // dump_buffer_pf_to_int(energy_file, energies, NUM_FILTERS, ENERGIES_WIDTH_F);
        // dump_buffer_to_hex_32(energy_file, energies, NUM_FILTERS);
        dump_buffer_pf_to_float(energy_file, energies, NUM_FILTERS, ENERGIES_WIDTH_F);
        
        if (fp_spec) {
            int SCALE_ENERGIES = 1 << ENERGIES_WIDTH_F;
            for (int j = 0; j < NUM_FILTERS; j++) {
                fprintf(fp_spec, "%f%c", (float)(energies[j] / SCALE_ENERGIES), (j == NUM_FILTERS - 1) ? '\n' : ' ');
            }
        }
        #endif
        
        int32_t ceps[NUM_CEPS];
        if (i == 0)
            init_cos_lut(DCT_COEFF_WIDTH_F);
        dct_fixed(energies, NUM_FILTERS, ceps, ENERGIES_WIDTH_F, DCT_COEFF_WIDTH_F);

        #ifdef CONFIG_LOG
            char ceps_file[64];
            snprintf(ceps_file, sizeof(ceps_file), "dumps/6_ceps/%04d.hex", i);
            dump_buffer_pf_to_float(ceps_file, ceps, NUM_CEPS, DCT_COEFF_WIDTH_F);
            // dump_buffer_to_hex_32(ceps_file, ceps, NUM_CEPS);

            if (fp_ceps) {
                for (int j = 0; j < NUM_CEPS; j++) {
                    fprintf(fp_ceps, "%.6f%c", (float)ceps[j], (j == NUM_CEPS - 1) ? '\n' : ' ');
                }
            }
        #endif
    }

    #ifdef CONFIG_CREATE_DATABANK
        char filepath_mel_table[512];
        snprintf(filepath_mel_table, sizeof(filepath_mel_table), "%s/mel_table.hex", tables_dir);
        save_op_filterbank(filepath_mel_table, filterbank, max_width_mel);
        
        char filepath_cos_lut[512];
        snprintf(filepath_cos_lut, sizeof(filepath_cos_lut), "%s/cos_lut.hex", tables_dir);
        save_cos_lut(filepath_cos_lut);
    #endif  
    free(filterbank);



    #ifdef CONFIG_LOG
        if (fp_ceps) fclose(fp_ceps);
        if (fp_spec) fclose(fp_spec);
    #endif



    clock_t end_time = clock();
    double time_spent = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("Execution Time (us): %.2f\n", time_spent * 1e6);
    unsigned long long end_cycles = get_cycles();
    printf("CPU Cycles: %llu\n", end_cycles - start_cycles);


    free(frames);
    free(samples);
    free(header);

    return 0;
}
