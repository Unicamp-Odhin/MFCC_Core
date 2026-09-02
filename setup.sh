#!/bin/bash
set -e  

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}=== Configurando ambiente para MFCC com Verilator ===${NC}"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Definição dos caminhos (relativos ao ROOT_DIR)
RTL_DIR="${ROOT_DIR}/rtl"
TESTS_DIR="${ROOT_DIR}/tests"
TABLES_DIR="${ROOT_DIR}/tables"
DPI_DIR="${ROOT_DIR}/dpi"
REF_C_DIR="${ROOT_DIR}/ref_model/c"
REF_PYTHON_DIR="${ROOT_DIR}/ref_model/python"
BUILD_DIR="${ROOT_DIR}/build"
OBJ_DIR="${ROOT_DIR}/obj_dir"

# Exporta variáveis para uso em outros scripts
export PROJECT_ROOT="$ROOT_DIR"
export RTL_DIR TESTS_DIR TABLES_DIR DPI_DIR REF_C_DIR REF_PYTHON_DIR BUILD_DIR OBJ_DIR