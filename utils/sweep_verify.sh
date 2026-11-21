#!/usr/bin/env bash
# =============================================================================
# Verificacao do IP para uma configuracao (NFFT/FILTROS/CEPS/RATE/F):
#   1. grava a config no .env
#   2. utils/run_reference.sh  (gen_params -> modelo C -> refs/dumps/tabelas -> ROMs)
#   3. roda os testbenches RTL (mfcc_tb em tempo real + dct_tb turbo)
# Resultados acumulados em /eda/projetos/MFCC_Core/tests/build/sweep_results.txt
# =============================================================================
set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export RTL_DIR="$ROOT/rtl"
export TESTS_DIR="$ROOT/tests"
RESULT_FILE="${RESULT_FILE:-/eda/projetos/MFCC_Core/tests/build/sweep_results.txt}"

NFFT=$1; NFILT=$2; NCEPS=$3; RATE=$4; F_VAL=$5
FRAME_SEC=$6; STEP_SEC=$7; WAV_REL=$8

cat > "$ROOT/.env" <<EOF
NFFT=$NFFT
NUM_FILTERS=$NFILT
NUM_CEPS=$NCEPS

WAV_FILE=$WAV_REL
SAMPLE_RATE=$RATE

FRAME_SIZE_SEC=$FRAME_SEC
FRAME_STEP_SEC=$STEP_SEC

PRE_EMPHASIS=0.97

F=$F_VAL

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

RUN_TAG="NFFT=$NFFT/FILT=$NFILT/CEPS=$NCEPS/RATE=$RATE/F=$F_VAL"
echo "============================================================"
echo ">>> $RUN_TAG (wav: $WAV_REL)"
echo "============================================================"

if ! bash "$ROOT/utils/run_reference.sh" > /eda/projetos/MFCC_Core/tests/build/ref_last.log 2>&1; then
  echo "FALHA na geracao da referencia para $RUN_TAG" | tee -a "$RESULT_FILE"
  tail -20 /eda/projetos/MFCC_Core/tests/build/ref_last.log
  exit 1
fi

# fatores do gen_params vs do C
grep -E "FACTOR0|FACTORk|MEL_BANK_SIZE" /eda/projetos/MFCC_Core/tests/build/c_run.log | head -4

build_and_run () {
  local tb=$1; shift
  local files="$*"
  if ! verilator --top-module $tb $files -DTESTS_DIR=\"$TESTS_DIR\" -Wall --assert \
       --language 1800-2017 --timing --binary -Wno-fatal -j 0 -I${RTL_DIR} \
       -o V${tb} > /eda/projetos/MFCC_Core/tests/build/vl_${tb}.log 2>&1; then
    echo "  ERRO DE COMPILACAO em $tb:"; grep "%Error" /eda/projetos/MFCC_Core/tests/build/vl_${tb}.log | head -4
    return 1
  fi
  ./obj_dir/V${tb} > /eda/projetos/MFCC_Core/tests/build/run_${tb}.log 2>&1
}

# mfcc_tb (tempo real, END-TO-END)
if build_and_run mfcc_tb "${RTL_DIR}/mfcc_pkg.sv ${TESTS_DIR}/mfcc_tb.sv ${RTL_DIR}/pre_emphasis.sv ${RTL_DIR}/fifo.sv ${RTL_DIR}/window_buffer.sv ${RTL_DIR}/hamming_rom.sv ${RTL_DIR}/hamming_window.sv ${RTL_DIR}/complex_pkg.sv ${RTL_DIR}/long_mul_fixed.sv ${RTL_DIR}/twiddles_rom.sv ${RTL_DIR}/sram_1r1w.sv ${RTL_DIR}/fft_radix2.sv ${RTL_DIR}/log2_fp_pipelined.sv ${RTL_DIR}/mel_table_rom.sv ${RTL_DIR}/mel.sv ${RTL_DIR}/cos_lut_rom.sv ${RTL_DIR}/dct.sv ${RTL_DIR}/MFCC_Core.sv"; then
  MFCC_LINE=$(awk '/\[MFCC [0-9]+\]/{if ($0 ~ /FALHA/) f++; else o++} END{printf "quadros_OK=%d quadros_FALHA=%d", o+0, f+0}' /eda/projetos/MFCC_Core/tests/build/run_mfcc_tb.log)
  FIFO_ERRS=$(grep -c "fifo cheia" /eda/projetos/MFCC_Core/tests/build/run_mfcc_tb.log)
  PRE_ERRS=$(grep -c "PRE-EMPHASIS MISMATCH" /eda/projetos/MFCC_Core/tests/build/run_mfcc_tb.log)
  echo "MFCC_TB | $RUN_TAG | $MFCC_LINE | fifo_full_events=$FIFO_ERRS | pre_errs=$PRE_ERRS" | tee -a "$RESULT_FILE"
else
  echo "MFCC_TB | $RUN_TAG | FALHA (compilacao/execucao)" | tee -a "$RESULT_FILE"
fi

# dct_tb (energias + ceps)
if build_and_run dct_tb "${TESTS_DIR}/dct_tb.sv ${RTL_DIR}/cos_lut_rom.sv ${RTL_DIR}/pre_emphasis.sv ${RTL_DIR}/fifo.sv ${RTL_DIR}/window_buffer.sv ${RTL_DIR}/hamming_rom.sv ${RTL_DIR}/hamming_window.sv ${RTL_DIR}/complex_pkg.sv ${RTL_DIR}/long_mul_fixed.sv ${RTL_DIR}/twiddles_rom.sv ${RTL_DIR}/sram_1r1w.sv ${RTL_DIR}/fft_radix2.sv ${RTL_DIR}/log2_fp_pipelined.sv ${RTL_DIR}/mel_table_rom.sv ${RTL_DIR}/mel.sv ${RTL_DIR}/dct.sv"; then
  DCT_LINE=$(grep -E "=== DCT TB" /eda/projetos/MFCC_Core/tests/build/run_dct_tb.log | tail -1)
  echo "DCT_TB  | $RUN_TAG | $DCT_LINE" | tee -a "$RESULT_FILE"
else
  echo "DCT_TB  | $RUN_TAG | FALHA (compilacao/execucao)" | tee -a "$RESULT_FILE"
fi

# mel_tb (unitario, energia direto da ref)
if build_and_run mel_tb "${TESTS_DIR}/mel_tb.sv ${RTL_DIR}/mel.sv ${RTL_DIR}/mel_table_rom.sv ${RTL_DIR}/log2_fp_pipelined.sv ${RTL_DIR}/long_mul_fixed.sv"; then
  MEL_OK=$(grep -c "PASSOU NO TESTE" /eda/projetos/MFCC_Core/tests/build/run_mel_tb.log)
  echo "MEL_TB  | $RUN_TAG | passou em $MEL_OK/2 vetores" | tee -a "$RESULT_FILE"
else
  echo "MEL_TB  | $RUN_TAG | FALHA (compilacao/execucao)" | tee -a "$RESULT_FILE"
fi
