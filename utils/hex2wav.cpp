#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

// Estrutura do cabeçalho WAV (44 bytes)
typedef struct {
    char riff[4];           // "RIFF"
    uint32_t file_size;     // Tamanho total do arquivo - 8
    char wave[4];           // "WAVE"
    char fmt[4];            // "fmt "
    uint32_t fmt_size;      // Tamanho do chunk fmt (16 para PCM)
    uint16_t audio_format;  // Formato de áudio (1 = PCM)
    uint16_t num_channels;  // Número de canais (1 = mono, 2 = stereo)
    uint32_t sample_rate;   // Taxa de amostragem (ex: 44100 Hz)
    uint32_t byte_rate;     // Bytes por segundo (sample_rate * num_channels * bits_per_sample/8)
    uint16_t block_align;   // Alinhamento (num_channels * bits_per_sample/8)
    uint16_t bits_per_sample; // Bits por amostra (ex: 16, 24)
    char data[4];           // "data"
    uint32_t data_size;     // Tamanho dos dados de amostra
} WavHeader;

int main(int argc, char *argv[]) {
    if (argc != 5 || strcmp(argv[1], "--bytes_sample") != 0 || 
    (strcmp(argv[2], "2") != 0 && strcmp(argv[2], "3") != 0) ||
    strcmp(argv[3], "--sample_rate") != 0) {
        fprintf(stderr, "Uso: %s --bytes_sample [2|3] --sample_rate <valor>\n", argv[0]);
        return 1;
    }

    const uint16_t bytes_per_sample = atoi(argv[2]);
    const uint32_t sample_rate = atoi(argv[4]);

    const uint16_t num_channels = 1;                    // Mono
    const uint16_t bits_per_sample = 8 * bytes_per_sample; 


    const char *input_filename = "dump.hex";
    const char *output_filename = "dump.wav";


    FILE *input_file = fopen(input_filename, "r");
    if (!input_file) {
        perror("Erro ao abrir arquivo de entrada");
        return 1;
    }

    uint32_t num_samples = 0;
    char line[16];
    while (fgets(line, sizeof(line), input_file)) {
        if (strstr(line, "000000") == NULL) {
            num_samples++;
        }
        //num_samples++;
    }
    rewind(input_file);

    uint32_t data_size = num_samples * num_channels * bytes_per_sample;

    // Criar cabeçalho WAV
    WavHeader header;
    memcpy(header.riff, "RIFF", 4);
    header.file_size = 36 + data_size;
    memcpy(header.wave, "WAVE", 4);
    memcpy(header.fmt, "fmt ", 4);
    header.fmt_size = 16;
    header.audio_format = 1; // PCM
    header.num_channels = num_channels;
    header.sample_rate = sample_rate;
    header.byte_rate = sample_rate * num_channels * bytes_per_sample;
    header.block_align = num_channels * bytes_per_sample;
    header.bits_per_sample = bits_per_sample;
    memcpy(header.data, "data", 4);
    header.data_size = data_size;

    FILE *output_file = fopen(output_filename, "wb");
    if (!output_file) {
        perror("Erro ao criar arquivo WAV");
        fclose(input_file);
        return 1;
    }

    fwrite(&header, sizeof(WavHeader), 1, output_file);

    while (fgets(line, sizeof(line), input_file)) {
        if (strstr(line, "000000") == NULL) {
            line[strcspn(line, "\n")] = '\0';

            uint32_t byte1 = (strtol(line, NULL, 16) >> 16) & 0xFF;
            uint32_t byte2 = (strtol(line, NULL, 16) >> 8) & 0xFF;
            uint32_t byte3 = (strtol(line, NULL, 16)) & 0xFF;

            // uint32_t sample = (byte3 << 16) | (byte2 << 8) | byte1;
            // uint32_t sample = ((byte2 << 16) | (byte3 << 8) | byte1) << 5;
            uint32_t sample = ((byte2 << 16) | (byte3 << 8) | byte1);
            // uint32_t sample = (byte3 << 16) | (byte1 << 8) | byte2;
            // uint32_t sample = (byte1 << 16) | (byte2 << 8) | byte3;

            /*
                Está com esse tanto de linhas comentadas porque pode haver um problema de 
                sincronização. Então pode ser uma permutação desses 3 bytes
            */

            fwrite(&sample, bytes_per_sample, 1, output_file);
        }
    }

    fclose(input_file);
    fclose(output_file);

    printf("Arquivo WAV gerado com sucesso: %s\n", output_filename);
    printf("Número de amostras: %u\n", num_samples);
    printf("Taxa de amostragem: %u Hz\n", sample_rate);
    printf("Bits por amostra: %u\n", bits_per_sample);

    return 0;
}
