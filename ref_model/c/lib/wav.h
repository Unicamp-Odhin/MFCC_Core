#ifndef __WAV_H__
#define __WAV_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

typedef struct {
    char chunkID[4];      // "RIFF"
    uint32_t chunkSize;
    char format[4];        // "WAVE"
    
    // Subchunk1 (fmt )
    char subchunk1ID[4];   // "fmt "
    uint32_t subchunk1Size;
    uint16_t audioFormat;
    uint16_t numChannels;
    uint32_t sampleRate;
    uint32_t byteRate;
    uint16_t blockAlign;
    uint16_t bitsPerSample;

    // Subchunk2 (data)
    char subchunk2ID[4];   // "data"
    uint32_t subchunk2Size;
} WavHeader;

WavHeader * open_wav_file(const char *filename, int16_t **samples);

#ifdef __cplusplus
}
#endif

#endif // __WAV_H__
