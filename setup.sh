#!/usr/bin/env bash

set -e

### PATHS
# project root
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
export MFCC_ROOT="${SCRIPT_DIR}"

# directories
export RTL_DIR="${MFCC_ROOT}/rtl"
export TESTS_DIR="${MFCC_ROOT}/tests"