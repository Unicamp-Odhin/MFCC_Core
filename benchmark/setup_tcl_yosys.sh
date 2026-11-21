#!/usr/bin/env bash
# Instala headers do Tcl em prefixo do usuario (sem root), reconstroi o yosys
# do ORFS com suporte a Tcl (-c) e, se ok, relanca o sweep ASIC da maquina.
# Uso: setup_tcl_yosys.sh <rocky|debian> "<PDKS do sweep>"
set -e
DISTRO=$1; shift; PDKS="$*"
mkdir -p ~/tclroot/pkgconfig && cd ~/tclroot
rm -f tcl*dev*.rpm tcl*dev*.deb 2>/dev/null || true
if [ "$DISTRO" = rocky ]; then
  dnf download -q tcl-devel
  rpm2cpio tcl-devel-*.rpm | cpio -idm --quiet
  INC="$HOME/tclroot/usr/include"
else
  apt-get download tcl8.6-dev 2>/dev/null || apt-get download tcl-dev
  dpkg -x tcl*dev*.deb ~/tclroot
  INC="$(dirname "$(find ~/tclroot -name tcl.h | head -1)")"
fi
test -f "$INC/tcl.h"
cat > pkgconfig/tcl.pc <<EOF
Name: tcl
Description: Tcl headers em prefixo de usuario (runtime lib do sistema)
Version: 8.6
Cflags: -I$INC
Libs: -ltcl8.6
EOF
cd /eda/asic/OpenROAD-flow-scripts
rm -rf tools/yosys/build
export PKG_CONFIG_PATH="$HOME/tclroot/pkgconfig"
cmake -B tools/yosys/build tools/yosys -DCMAKE_BUILD_TYPE=Release \
      -DYOSYS_SKIP_ABC_SUBMODULE_CHECK=ON \
      -DCMAKE_INSTALL_PREFIX=/eda/asic/OpenROAD-flow-scripts/tools/install/yosys \
      > /tmp/yosys_build.log 2>&1
cmake --build tools/yosys/build --target install -j "$(nproc)" >> /tmp/yosys_build.log 2>&1
if tools/install/yosys/bin/yosys -c /dev/null > /dev/null 2>&1; then
  echo YOSYS_OK > /eda/projetos/MFCC_Core/benchmark/asic/yosys_build.status
  cd /eda/projetos/MFCC_Core/benchmark
  setsid nohup env ASIC_PDKS="$PDKS" bash asic_sweep.sh > asic/sweep_nohup.log 2>&1 &
  echo "SWEEP LANÇADO (PDKS: $PDKS)"
else
  echo YOSYS_FAIL > /eda/projetos/MFCC_Core/benchmark/asic/yosys_build.status
  echo "YOSYS ainda sem -c — ver /tmp/yosys_build.log"
fi
