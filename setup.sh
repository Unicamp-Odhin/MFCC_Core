#!/bin/bash

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# directories
RTL_DIR="${ROOT_DIR}/rtl"
TESTS_DIR="${ROOT_DIR}/tests"
TABLES_DIR="${ROOT_DIR}/tables"
WAV_DIR="${ROOT_DIR}/wav"
REF_C_DIR="${ROOT_DIR}/ref_model/c"
REF_PYTHON_DIR="${ROOT_DIR}/ref_model/python"
BUILD_DIR="${ROOT_DIR}/build"
OBJ_DIR="${ROOT_DIR}/obj_dir"
CONSTRAINTS_DIR="${ROOT_DIR}/constraints"

# tools scripts
export SYNTH_DIR="${ROOT_DIR}/tools"
export DC_DIR="${SYNTH_DIR}/dc"
export FC_DIR="${SYNTH_DIR}/fc"
export FM_DIR="${SYNTH_DIR}/fm"
export VCS_DIR="${SYNTH_DIR}/vcs"


# Exporta variáveis para uso em outros scripts
export PROJECT_ROOT="$ROOT_DIR"
export RTL_DIR TESTS_DIR TABLES_DIR WAV_DIR SAMPLES_DIR REF_C_DIR REF_PYTHON_DIR BUILD_DIR OBJ_DIR SYNTH_DIR DC_DIR FC_DIR FM_DIR VCS_DIR CONSTRAINTS_DIR

### MODULES
MODULES=(
    "syn/W-2024.09-SP5-2"
    "fusioncompiler/W-2024.09-SP3"
    "designcompiler/W-2024.09-SP5-4"
    "vcs/W-2024.09-SP2-3"
    "verdi/W-2024.09-SP2-6"
    "fm/W-2024.09-SP5"
)

echo "Loading Synopsys modules..."
for mod in "${MODULES[@]}"; do
    module load "${mod}"
done

mkdir -p "$TESTS_DIR/data/2_frames"
mkdir -p "$TESTS_DIR/data/3_hamming_frames"
mkdir -p "$TESTS_DIR/data/4_power_spectrum"
mkdir -p "$TESTS_DIR/data/5_energies"
mkdir -p "$TESTS_DIR/data/6_ceps"
mkdir -p "$TESTS_DIR/data/dumps_mfcc"