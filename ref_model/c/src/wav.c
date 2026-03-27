#include "wav.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

WavHeader *open_wav_file(const char *filename, int16_t **samples) {
    FILE *file = fopen(filename, "rb");
    if (!file) {
        fprintf(stderr, "Erro ao abrir arquivo: %s\n", filename);
        return NULL;
    }

    WavHeader *header = malloc(sizeof(WavHeader));
    if (!header) {
        fprintf(stderr, "Erro de memória\n");
        fclose(file);
        return NULL;
    }

    fread(header, sizeof(WavHeader), 1, file);

    if (strncmp(header->chunkID, "RIFF", 4) != 0 ||
        strncmp(header->format, "WAVE", 4) != 0) {
        fprintf(stderr, "Arquivo WAV inválido\n");
        fclose(file);
        free(header);
        return NULL;
    }

    if (header->audioFormat != 1) {
        fprintf(stderr, "Formato não é PCM\n");
        fclose(file);
        free(header);
        return NULL;
    }

    int num_samples = header->subchunk2Size / (header->bitsPerSample / 8);

    *samples = malloc(num_samples * sizeof(int16_t));
    if (!*samples) {
        fprintf(stderr, "Erro ao alocar samples\n");
        fclose(file);
        free(header);
        return NULL;
    }


    if (header->bitsPerSample == 16) {
        fread(*samples, sizeof(int16_t), num_samples, file);
    }


    else if (header->bitsPerSample == 24) {
        unsigned char *buffer = malloc(header->subchunk2Size);
        if (!buffer) {
            fprintf(stderr, "Erro ao alocar buffer 24-bit\n");
            fclose(file);
            free(header);
            free(*samples);
            return NULL;
        }

        fread(buffer, 1, header->subchunk2Size, file);

        for (int i = 0; i < num_samples; i++) {
            int32_t sample = 0;

            sample |= buffer[i * 3];
            sample |= buffer[i * 3 + 1] << 8;
            sample |= buffer[i * 3 + 2] << 16;

            if (sample & 0x800000) {
                sample |= 0xFF000000;
            }

            (*samples)[i] = (int16_t)(sample >> 8);
        }

        free(buffer);
    }

    else {
        fprintf(stderr, "Apenas 16 e 24 bits são suportados\n");
        fclose(file);
        free(header);
        free(*samples);
        return NULL;
    }

    fclose(file);
    return header;
}