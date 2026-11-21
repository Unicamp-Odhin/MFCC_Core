#!/usr/bin/env bash
# Roda a matriz de verificacao: 3 configuracoes x F in {8,16,24}
set -u
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RESULT_FILE=/eda/projetos/MFCC_Core/tests/build/sweep_results.txt
: > "$RESULT_FILE"

run () {
  bash "$ROOT/utils/sweep_verify.sh" "$@" >> /eda/projetos/MFCC_Core/tests/build/sweep_driver.log 2>&1
}

# (NFFT FILT CEPS RATE F FRAME_SEC STEP_SEC WAV)
run 256  20  7  8000 16 0.032 0.016 wav/8_000_hz/seno_440Hz.wav
run 256  20  7  8000  8 0.032 0.016 wav/8_000_hz/seno_440Hz.wav
run 256  20  7  8000 24 0.032 0.016 wav/8_000_hz/seno_440Hz.wav
run 512  40 12 16000 16 0.025 0.010 wav/16_000_hz/seno_440Hz.wav
run 512  40 12 16000  8 0.025 0.010 wav/16_000_hz/seno_440Hz.wav
run 512  40 12 16000 24 0.025 0.010 wav/16_000_hz/seno_440Hz.wav
run 1024 60 20 44100 16 0.023 0.010 wav/44_100_hz/seno_300hz.wav
run 1024 60 20 44100  8 0.023 0.010 wav/44_100_hz/seno_300hz.wav
run 1024 60 20 44100 24 0.023 0.010 wav/44_100_hz/seno_300hz.wav

# restaura a config padrao (1024/40/12, F=16)
cat > "$ROOT/.env" <<'EOF'
NFFT=1024
NUM_FILTERS=40
NUM_CEPS=12

WAV_FILE=wav/16_000_hz/seno_440Hz.wav
SAMPLE_RATE=16000

FRAME_SIZE_SEC=0.025
FRAME_STEP_SEC=0.010

PRE_EMPHASIS=0.97

F=16

F_PRE=
F_HAMMING=
F_FFT=
F_MEL=
F_DCT=

TRUNCATE_PRE=0
TRUNCATE_HAMMING=0
TRUNCATE_FFT=0
TRUNCATE_MEL=0
TRUNCATE_DCT=0
EOF
bash "$ROOT/utils/run_reference.sh" > /eda/projetos/MFCC_Core/tests/build/ref_restore.log 2>&1
echo "SWEEP COMPLETO" >> "$RESULT_FILE"
