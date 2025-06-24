#include "wav.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

WavHeader * open_wav_file(const char *filename, int16_t **samples) {
    WavHeader *header = malloc(sizeof(WavHeader));
    if (!header) {
        fprintf(stderr, "Memory allocation failed for WavHeader\n");
        return NULL;
    }

    FILE *file = fopen(filename, "rb");
    if (!file) {
        fprintf(stderr, "Failed to open file: %s\n", filename);
        return NULL;
    }

    fread(header, sizeof(WavHeader), 1, file);

    if (strncmp(header->chunkID, "RIFF", 4) != 0 || strncmp(header->format, "WAVE", 4) != 0) {
        fprintf(stderr, "Invalid WAV file format\n");
        fclose(file);
        free(header);
        return NULL;
    }

    if (header->audioFormat != 1) {
        printf("Formato de áudio não é PCM (linear).\n");
        fclose(file);
        free(header);
        return NULL;
    }

    if (header->subchunk1Size != 16) {
        printf("Subchunk1 size não é 16 bytes.\n");
        fclose(file);
        free(header);
        return NULL;
    }

    
    printf("Num canais: %d\n", header->numChannels);
    printf("Sample Rate: %d Hz\n", header->sampleRate);
    printf("Bits por sample: %d\n", header->bitsPerSample);
    printf("Tamanho dos dados de áudio: %d bytes\n", header->subchunk2Size);

    *samples = (int16_t *)malloc(header->subchunk2Size);

    if (!*samples) {
        fprintf(stderr, "Memory allocation failed for samples\n");
        fclose(file);
        free(header);
        return NULL;
    }

    fread(*samples, header->subchunk2Size, 1, file);

    fclose(file);

    return header;
}
