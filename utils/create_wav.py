import numpy as np
from scipy.io import wavfile

# Parâmetros
samples = 400

sample_rate = 16000       # Hz
duration = samples / sample_rate         
frequency = 440           # Hz (nota A4)
amplitude = 0.5           # valor entre 0 e 1

# Geração da onda
t = np.linspace(0, duration, int(sample_rate * duration), endpoint=False)
waveform = amplitude * np.sin(2 * np.pi * frequency * t)

# Converte para int16 (formato padrão de áudio)
waveform_int16 = np.int16(waveform * 32767)

# Salva como WAV
wavfile.write("data/seno_440Hz.wav", sample_rate, waveform_int16)
