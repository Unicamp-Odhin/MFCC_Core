set ANC_DIGITAL_ROOT $::env(ANC_DIGITAL_ROOT)
set DC_DIR $::env(DC_DIR)
set CONSTRAINTS_DIR $::env(CONSTRAINTS_DIR)
set RTL_DIR $::env(RTL_DIR)
set FM_DIR $::env(FM_DIR)


source "${DC_DIR}/common/setup.tcl"
source "${DC_DIR}/common/utils.tcl"

check_status "READ RTL" {source "${DC_DIR}/scripts/flow/read_rtl.tcl"}

check_status "ELABORATE" {source "${DC_DIR}/scripts/flow/elaborate.tcl"}

set_svf -off
set_svf "$DC_DIR/design_synthesis.svf"

source "${CONSTRAINTS_DIR}/constraints.sdc"
check_timing
 
check_status "SYNTHESIS" {source "${DC_DIR}/scripts/flow/synthesis.tcl"}
 
set_svf -off
set_svf "$DC_DIR/design_dft.svf"
check_status "DFT" {source "${DC_DIR}/scripts/flow/dft.tcl"}
set_svf -off
 
check_status "WRITE OUTPUTS" {source "${DC_DIR}/scripts/flow/write_outputs.tcl"}
 
check_status "REPORTS" {source "${DC_DIR}/scripts/flow/reports.tcl"}
 
puts "FINISH"

# exit