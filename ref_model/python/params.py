# GERADO AUTOMATICAMENTE por utils/gen_params.py a partir do .env - NAO EDITAR
from math import floor

NFFT = 1024
NFILT = 40
NUM_CEPS = 12
FRAME_SIZE = 0.025  # segundos
FRAME_STEP = 0.01  # segundos
PRE_EMPHASIS = 0.97
SAMPLE_RATE = 16000
F_PRE = 16
F_HAMMING = 16
F_FFT = 16
F_MEL = 16
F_DCT = 16
# ALPHA espelha o ALPHA do RTL (pre-enfase em ponto fixo)
ALPHA = int(PRE_EMPHASIS * (1 << 16))
FRAME_SIZE_SAMPLES = int(floor(SAMPLE_RATE * FRAME_SIZE))
FRAME_STEP_SAMPLES = int(floor(SAMPLE_RATE * FRAME_STEP))
