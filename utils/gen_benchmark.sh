#!/usr/bin/env bash
# Gera os 9 netlists de benchmark (3 NFFT x 3 F) em benchmark/ usando sv2v.
#
# Para cada combinacao:
#   1. escreve o .env da combinacao
#   2. utils/run_reference.sh  -> gen_params.py gera params.h/config.txt/
#      params.py/mfcc_params.vh; o modelo C regenera as tabelas (que dependem
#      de NFFT e F) e o script corrige FACTOR0/FACTORk/MEL_BANK_SIZE no .vh
#   3. sv2v --top=MFCC_Core    -> netlist flat e especializado (os defaults do
#      MFCC_Core vêm de mfcc_params.vh, portanto o .v nasce consistente com as
#      ROMs e constantes da combinacao)
#   4. iverilog -g2005 elabora o netlist como smoke test
#
# Ao final restaura a configuracao padrao do repositorio.
set -u
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
mkdir -p benchmark tests/build
LOG=tests/build/gen_benchmark.log
: > "$LOG"
rm -f benchmark/_test_*.v

write_env () { # NFFT NFILT CEPS RATE F FRAME_SEC STEP_SEC WAV
  cat > .env <<EOF
NFFT=$1
NUM_FILTERS=$2
NUM_CEPS=$3

WAV_FILE=$8
SAMPLE_RATE=$4

FRAME_SIZE_SEC=$6
FRAME_STEP_SEC=$7

PRE_EMPHASIS=0.97

F=$5

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
}

gen () { # NFFT NFILT CEPS RATE F FRAME_SEC STEP_SEC WAV
  local N=$1 F=$5 OUT="benchmark/mfcc_NFFT${1}_F${5}.v"
  echo ">>> NFFT=$N/FILT=$2/CEPS=$3/RATE=$4/F=$F" | tee -a "$LOG"
  write_env "$@"
  if ! bash utils/run_reference.sh >> "$LOG" 2>&1; then
    echo "FALHA ref-gen      NFFT=$N F=$F (ver $LOG)" | tee -a "$LOG"
    return 1
  fi
  if ! sv2v --top=MFCC_Core -Irtl rtl/*.sv > "$OUT" 2>> "$LOG"; then
    echo "FALHA sv2v         NFFT=$N F=$F (ver $LOG)" | tee -a "$LOG"
    return 1
  fi
  if iverilog -g2005 -s MFCC_Core -o /tmp/opencode/bench_check.vvp "$OUT" >> "$LOG" 2>&1; then
    echo "OK  $OUT" | tee -a "$LOG"
  else
    echo "FALHA iverilog     NFFT=$N F=$F (ver $LOG)" | tee -a "$LOG"
  fi
}

for F in 16 8 24; do
  gen 256  20  7  8000  "$F" 0.032 0.016 wav/8_000_hz/seno_440Hz.wav
  gen 512  40 12 16000  "$F" 0.025 0.010 wav/16_000_hz/seno_440Hz.wav
  gen 1024 60 20 44100  "$F" 0.023 0.010 wav/44_100_hz/seno_300hz.wav
done

# README do benchmark com a descricao de cada netlist
{
  echo "# Benchmark — netlists MFCC_Core (sv2v, Verilog-2005)"
  echo
  echo "Gerados por \`utils/gen_benchmark.sh\`: para cada combinação de NFFT e F,"
  echo "o \`.env\` é regenerado, \`utils/gen_params.py\` (via \`run_reference.sh\`) gera"
  echo "os parâmetros/ROMs da configuração e o sv2v (\`--top=MFCC_Core\`) produz um"
  echo "netlist flat e especializado — os parâmetros já vêm resolvidos para casar"
  echo "com as ROMs e constantes embutidas."
  echo
  echo "Portas do \`MFCC_Core\`: \`clock\`, \`rst_n\`, \`pcm_in[15:0]\`, \`pcm_ready_i\`"
  echo "(strobe de amostra), \`start_i\`, \`auto_restart_i\`, \`mfcc_done_o\` (1 ciclo"
  echo "por quadro) e \`mfcc_data_o\` — vetor empacotado com \`NUM_CEPS\` palavras de"
  echo "32 bits (um coeficiente MFCC por palavra, F bits fracionários)."
  echo
  echo "| Arquivo | NFFT | Filtros | Ceps | Taxa (Hz) | F | FRAME_SIZE | FRAME_STEP |"
  echo "|---|---|---|---|---|---|---|---|"
  echo "| mfcc_NFFT256_F8.v    | 256  | 20 | 7  | 8000  | 8  | 256  | 128 |"
  echo "| mfcc_NFFT256_F16.v   | 256  | 20 | 7  | 8000  | 16 | 256  | 128 |"
  echo "| mfcc_NFFT256_F24.v   | 256  | 20 | 7  | 8000  | 24 | 256  | 128 |"
  echo "| mfcc_NFFT512_F8.v    | 512  | 40 | 12 | 16000 | 8  | 400  | 160 |"
  echo "| mfcc_NFFT512_F16.v   | 512  | 40 | 12 | 16000 | 16 | 400  | 160 |"
  echo "| mfcc_NFFT512_F24.v   | 512  | 40 | 12 | 16000 | 24 | 400  | 160 |"
  echo "| mfcc_NFFT1024_F8.v   | 1024 | 60 | 20 | 44100 | 8  | 1014 | 441 |"
  echo "| mfcc_NFFT1024_F16.v  | 1024 | 60 | 20 | 44100 | 16 | 1014 | 441 |"
  echo "| mfcc_NFFT1024_F24.v  | 1024 | 60 | 20 | 44100 | 24 | 1014 | 441 |"
} > benchmark/README.md

# restaura a config padrao (1024/40/12, F=16) e regenera a referencia
cat > .env <<'EOF'
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
bash utils/run_reference.sh >> "$LOG" 2>&1
echo "BENCHMARK COMPLETO" | tee -a "$LOG"
