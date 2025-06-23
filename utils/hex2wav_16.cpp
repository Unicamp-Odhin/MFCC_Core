#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstdint>
#include <cstring>

// Configurações do WAV
constexpr int SAMPLE_RATE = 12207; //3515 * 54;
constexpr int NUM_CHANNELS = 1;
constexpr int BITS_PER_SAMPLE = 16;
constexpr int BYTES_PER_SAMPLE = BITS_PER_SAMPLE / 8;

// Função para converter hexadecimal para inteiro com complemento de dois (16 bits)
int16_t hex_to_int16(const std::string& hex) {
    uint16_t val = static_cast<uint16_t>(std::stoul(hex, nullptr, 16));
    if (val >= 0x8000) {
        return static_cast<int16_t>(val - 0x10000);
    }
    return static_cast<int16_t>(val);
}

void write_wav_header(std::ofstream& out, int num_samples) {
    int32_t subchunk2_size = num_samples * NUM_CHANNELS * BYTES_PER_SAMPLE;
    int32_t chunk_size = 36 + subchunk2_size;
    int32_t byte_rate = SAMPLE_RATE * NUM_CHANNELS * BYTES_PER_SAMPLE;
    int16_t block_align = NUM_CHANNELS * BYTES_PER_SAMPLE;

    // Copiando valores para variáveis locais não-constantes
    int32_t sample_rate = SAMPLE_RATE;
    int16_t num_channels = NUM_CHANNELS;
    int16_t bits_per_sample = BITS_PER_SAMPLE;

    // RIFF header
    out.write("RIFF", 4);
    out.write(reinterpret_cast<char*>(&chunk_size), 4);
    out.write("WAVE", 4);

    // fmt subchunk
    out.write("fmt ", 4);
    int32_t subchunk1_size = 16;
    int16_t audio_format = 1;  // PCM
    out.write(reinterpret_cast<char*>(&subchunk1_size), 4);
    out.write(reinterpret_cast<char*>(&audio_format), 2);
    out.write(reinterpret_cast<char*>(&num_channels), 2);
    out.write(reinterpret_cast<char*>(&sample_rate), 4);
    out.write(reinterpret_cast<char*>(&byte_rate), 4);
    out.write(reinterpret_cast<char*>(&block_align), 2);
    out.write(reinterpret_cast<char*>(&bits_per_sample), 2);

    // data subchunk
    out.write("data", 4);
    out.write(reinterpret_cast<char*>(&subchunk2_size), 4);
}

void hex_to_wav(const std::string& input_path, const std::string& output_path) {
    std::ifstream infile(input_path);
    if (!infile) {
        std::cerr << "Erro ao abrir " << input_path << std::endl;
        return;
    }

    std::vector<int16_t> samples;
    std::string line;

    while (std::getline(infile, line)) {
        if (!line.empty()) {
            samples.push_back(hex_to_int16(line));
        }
    }

    std::ofstream wavfile(output_path, std::ios::binary);
    if (!wavfile) {
        std::cerr << "Erro ao criar " << output_path << std::endl;
        return;
    }

    write_wav_header(wavfile, samples.size());

    for (int16_t sample : samples) {
        wavfile.write(reinterpret_cast<char*>(&sample), sizeof(sample));
    }

    std::cout << "Arquivo WAV gerado: " << output_path << std::endl;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Uso: " << argv[0] << " arquivo.hex" << std::endl;
        return 1;
    }

    std::string input_file = argv[1];
    std::string output_file = input_file.substr(0, input_file.find_last_of('.')) + ".wav";

    hex_to_wav(input_file, output_file);
    return 0;
}
