#!/usr/bin/env bash
# =============================================================================
# Sweep ASIC via processor_ci_perf: netlists (3 NFFT x F=8/16/24) x PDKs.
#
# Distribuicao entre maquinas (via ASIC_PDKS, default = todos):
#   vader    : asap7 (restantes) -> nangate45 (menos relevante, por ultimo)
#   enqii    : sky130hs -> gf180
#   bobafett : sky130hd -> ihp-sg13g2
#
# Ordem das combinacoes: F=16 primeiro (matriz essencial NFFT x PDK), depois
# cantos F=8/24 das configs baratas (NFFT256) e por ultimo as caras (1024).
# Parar uma maquina no meio deixa pendentes os cantos menos relevantes.
#
# - ESTRITAMENTE sequencial (dirs objects/, results/, logs/, reports/ sao
#   compartilhados pelo flow e as sinteses sao pesadas).
# - Espera qualquer `main.py` em execucao (run manual) antes de CADA sintese.
# - Guarda de RAM: MemAvailable >= ASIC_MIN_RAM_KB antes de cada run.
# - -C limpa objects/results apos cada flow (senao ~11 GB/run estoura o disco).
# - Resumivel: pula <pdk>/<combo> com .done = OK.
#
# Uso:  nohup bash asic_sweep.sh > asic/sweep_nohup.log 2>&1 &
#       (ou) ASIC_PDKS="sky130hs gf180" bash asic_sweep.sh
# =============================================================================
set -u
BENCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PERF="/eda/processor_ci_perf/main.py"
MIN_RAM_KB=${ASIC_MIN_RAM_KB:-13000000}
# default: todos os 6 PDKs na ordem de relevancia
PDKS=${ASIC_PDKS:-"asap7 sky130hs sky130hd gf180 ihp-sg13g2 nangate45"}
# F=16 primeiro (mais relevante), depois cantos baratos (256), depois caros
COMBOS=(NFFT512_F16 NFFT1024_F16 NFFT256_F16 NFFT256_F8 NFFT256_F24 NFFT512_F8 NFFT512_F24 NFFT1024_F8 NFFT1024_F24)

log() { echo "[$(date +%d/%m %H:%M:%S)] $*" >> "$BENCH_DIR/asic/sweep.log"; }

wait_no_flow() {
  # espera qualquer run do processor_ci_perf (ex.: manual do usuario) terminar
  while pgrep -f "processor_ci_perf/main.py" > /dev/null; do sleep 60; done
}

wait_ram() {
  while :; do
    avail=$(awk '/MemAvailable/{print $2}' /proc/meminfo)
    [ "$avail" -ge "$MIN_RAM_KB" ] && return 0
    log "aguardando RAM (disponivel: $((avail/1024)) MB < $((MIN_RAM_KB/1024)) MB)"
    sleep 120
  done
}

mkdir -p "$BENCH_DIR/asic"
# dependencias do OpenROAD extraidas em prefixo de usuario (ex.: bobafett)
if [ -d "$HOME/xcbroot/usr/lib/x86_64-linux-gnu" ]; then
  export LD_LIBRARY_PATH="$HOME/xcbroot/usr/lib/x86_64-linux-gnu:${LD_LIBRARY_PATH:-}"
fi
log "=== ASIC SWEEP iniciado (PDKS: $PDKS) ==="

# 0) run manual em curso (so relevante na maquina onde o usuario rodou)
wait_no_flow

# 1) arquiva reports do run manual do usuario (asap7/NFFT256_F8) se existirem
if [ -d "$BENCH_DIR/reports/asap7/MFCC_Core" ]; then
  mkdir -p "$BENCH_DIR/asic/NFFT256_F8/asap7"
  rm -rf "$BENCH_DIR/asic/NFFT256_F8/asap7/reports_user"
  cp -r "$BENCH_DIR/reports/asap7/MFCC_Core" "$BENCH_DIR/asic/NFFT256_F8/asap7/reports_user"
  echo OK > "$BENCH_DIR/asic/NFFT256_F8/asap7/.done"
  log "asap7/NFFT256_F8: run manual do usuario arquivado (.done=OK)"
fi

# 2) pdk-major, estritamente sequencial
for pdk in $PDKS; do
  for combo in "${COMBOS[@]}"; do
    # run do usuario (vader): ja coberto pelo arquivamento acima
    if [ "$pdk/$combo" = "asap7/NFFT256_F8" ]; then
      echo "skip asap7/NFFT256_F8 (run do usuario)"; continue
    fi
    outdir="$BENCH_DIR/asic/$combo/$pdk"
    if [ "$(cat "$outdir/.done" 2>/dev/null)" = OK ]; then
      echo "skip $pdk/$combo (done)"; continue
    fi
    mkdir -p "$outdir"
    if [ ! -f "$BENCH_DIR/mfcc_${combo}.v" ]; then
      echo FALHOU > "$outdir/.done"
      log "FALHOU: $pdk/$combo (netlist ausente: mfcc_${combo}.v)"
      continue
    fi
    wait_no_flow
    wait_ram
    log ">>> $pdk / $combo (inicio)"
    if ( cd "$BENCH_DIR" && python3 "$PERF" -F asic -r -C \
           -t "$pdk" -f "mfcc_${combo}.v" -T MFCC_Core \
           -R "$outdir/reports" ) > "$outdir/run.log" 2>&1; then
      echo OK > "$outdir/.done"
      log "OK: $pdk/$combo"
    else
      echo FALHOU > "$outdir/.done"
      log "FALHOU: $pdk/$combo (ver $outdir/run.log)"
    fi
  done
done

log "=== ASIC SWEEP COMPLETO (PDKS: $PDKS) ==="
