#!/usr/bin/env bash
# =============================================================================
# Gera a referencia a partir do .env (fonte unica de parametros):
#   1. utils/gen_params.py   -> params.h / config.txt / params.py / mfcc_params.vh
#   2. modelo C (make)       -> ref_vectors/ (hex p/ RTL) + dumps/ (float p/ Python)
#   3. corrige rtl/mfcc_params.vh com FACTOR0/FACTORk/MEL_BANK_SIZE do log do C
#   4. utils/rom_generate.py -> ROMs .sv do RTL (tables/ -> rtl/)
# =============================================================================
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export REF_C_DIR="$ROOT/ref_model/c"
export TESTS_DIR="$ROOT/tests"
export TABLES_DIR="$ROOT/tables"
export RTL_DIR="$ROOT/rtl"

ENV_FILE="${ENV_FILE:-$ROOT/.env}"
WAV_REL=$(grep -E '^WAV_FILE=' "$ENV_FILE" | head -1 | cut -d= -f2-)
WAV_ABS="$ROOT/$WAV_REL"

echo "=== [1/4] gen_params (.env -> headers/config/params/vh) ==="
ENV_FILE="$ENV_FILE" python3 "$ROOT/utils/gen_params.py"

echo "=== [2/4] modelo C (make limpo + execucao: $WAV_REL) ==="

make -C "$REF_C_DIR" clean --no-print-directory > /dev/null 2>&1 || true
make -C "$REF_C_DIR/lib/mfcc_fixed_point" clean --no-print-directory > /dev/null 2>&1 || true
make -C "$REF_C_DIR" --no-print-directory > /eda/projetos/MFCC_Core/tests/build/c_build.log 2>&1 || { tail -20 /eda/projetos/MFCC_Core/tests/build/c_build.log; exit 1; }
if [ ! -f "$REF_C_DIR/build/main.elf" ]; then
  echo "ERRO: main.elf nao foi gerado"; tail -30 /eda/projetos/MFCC_Core/tests/build/c_build.log; exit 1
fi
"$REF_C_DIR/build/main.elf" "$WAV_ABS" | tee /eda/projetos/MFCC_Core/tests/build/c_run.log

echo "=== [3/4] atualizando rtl/mfcc_params.vh com os valores do log do C ==="
C_FACTOR0=$(grep -m1 '^FACTOR0:' /eda/projetos/MFCC_Core/tests/build/c_run.log | awk '{print $2}')
C_FACTORK=$(grep -m1 '^FACTORk:'  /eda/projetos/MFCC_Core/tests/build/c_run.log | awk '{print $2}')
C_MEL_BANK=$(grep -m1 '^MEL_BANK_SIZE=' /eda/projetos/MFCC_Core/tests/build/c_run.log | awk -F= '{print $2}' | tr -d ' ')
G_MEL_BANK=$(grep -E '^`define MFCC_MEL_BANK_SIZE' "$RTL_DIR/mfcc_params.vh" | grep -oE '[0-9]+')

python3 - "$RTL_DIR/mfcc_params.vh" "$C_FACTOR0" "$C_FACTORK" "$C_MEL_BANK" <<'PYEOF'
import re, sys
path, f0, fk, mb = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
s = open(path).read()
s = re.sub(r'`define MFCC_FACTOR0 .*', '`define MFCC_FACTOR0 ' + f0, s)
s = re.sub(r'`define MFCC_FACTORK .*', '`define MFCC_FACTORK ' + fk, s)
s = re.sub(r'`define MFCC_MEL_BANK_SIZE .*', '`define MFCC_MEL_BANK_SIZE ' + mb, s)
open(path, 'w').write(s)
print(f"  FACTOR0={f0} FACTORK={fk} MEL_BANK_SIZE={mb}")
PYEOF

if [ "$G_MEL_BANK" != "$C_MEL_BANK" ]; then
  echo "  (estimativa do gen_params divergia do C: estimada=$G_MEL_BANK, C=$C_MEL_BANK - usando o C)"
fi

echo "=== [4/4] rom_generate (tables/ -> rtl/*.sv) ==="
python3 "$ROOT/utils/rom_generate.py"

