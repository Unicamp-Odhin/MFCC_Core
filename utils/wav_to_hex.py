import wave
import struct
import sys

def wav_to_hex(wav_path, hex_path):
    with wave.open(wav_path, 'rb') as wav_file:
        num_channels = wav_file.getnchannels()
        sampwidth = wav_file.getsampwidth()
        num_frames = wav_file.getnframes()
        framerate = wav_file.getframerate()

        print(f'Canal(es): {num_channels}')
        print(f'Taxa de amostragem: {framerate} Hz')
        print(f'Largura da amostra: {sampwidth * 8} bits')
        print(f'Total de amostras: {num_frames}')

        if sampwidth != 2:
            raise ValueError("Este script só suporta WAV de 16 bits.")
        if num_channels != 1:
            raise ValueError("Este script só suporta WAV mono (1 canal).")

        frames = wav_file.readframes(num_frames)
        samples = struct.unpack('<' + 'h' * num_frames, frames)  # WAV é little-endian internamente

    with open(hex_path, 'w') as hex_file:
        for sample in samples:
            # Converte para hexadecimal (big-endian)
            hex_sample = struct.pack('>h', sample).hex()
            hex_file.write(hex_sample + '\n')

    print(f'Arquivo HEX gerado com sucesso: {hex_path}')

# Exemplo de uso
if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Uso: python wav_to_hex.py entrada.wav saida.hex")
    else:
        wav_to_hex(sys.argv[1], sys.argv[2])
