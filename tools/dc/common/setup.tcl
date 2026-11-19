#####################################################################
# PDK SETUP
source "${PROJECT_ROOT}/common/pdks/saed32/hvt.tcl"

set LIBRARY_FILES "${NDM_REFERENCE_LIB_DIRS}"

lappend search_path "${DB_PATH}"
lappend search_path "${RTL_DIR}"



set iopad_library "${LIB_IO_PATH}/saed32io_wb_tt1p05v25c_2p5v.db"
set_app_var synthetic_library dw_foundation.sldb

set STD_DB_MAX "${PDK_BASE}/lib/stdcell_hvt/db_nldm/saed32hvt_ss0p95v25c.db"

set_app_var target_library [list $STD_DB_MAX $SRAM_DB_MAX]
set_app_var link_library   "* $target_library $synthetic_library $iopad_library"

# min library para hold
set_min_library $STD_DB_MAX  -min_version "${PDK_BASE}/lib/stdcell_hvt/db_nldm/saed32hvt_ff1p16v25c.db"
set_min_library $SRAM_DB_MAX -min_version $SRAM_DB_MIN


set_app_var designer "MFCC_Core"

set ndm_design_library "$NDM_DESIGN_LIB"

if {![file isdirectory $NDM_DESIGN_LIB]} {
    create_lib \
        -technology $TECH_FILE \
        -ref_libs   $NDM_REFERENCE_LIB_DIRS \
        $NDM_DESIGN_LIB
} else {
    open_lib $NDM_DESIGN_LIB
}

set_tlu_plus_files \
    -max_tluplus  $TLUPLUS_MAX_FILE \
    -min_tluplus  $TLUPLUS_MIN_FILE \
    -tech2itf_map $MAP_FILE

#####################################################################
# PATH SETUP
set RUN_NAME [clock format [clock seconds] -format "%Y%m%d_%H%M%S"]

set RUN_DIR "${DC_DIR}/runs/$RUN_NAME"

set REPORTS_DIR  "$RUN_DIR/reports"
set OUTPUTS_DIR  "$RUN_DIR/outputs"
set WORK_DIR  "$RUN_DIR/work"
set SNAPSHOT_DIR "$RUN_DIR/snapshots"
set FORMALITY_DIR "$RUN_DIR/formality"


foreach dir [list $RUN_DIR $REPORTS_DIR $OUTPUTS_DIR $SNAPSHOT_DIR $FORMALITY_DIR] {
    file mkdir $dir
    puts "Criado: $dir"
}

set work_path "$WORK_DIR"

if {![file exists $work_path]} {
    file mkdir $work_path
}

set files_to_backup {
    rtl
    scripts
}

foreach file $files_to_backup {
    set src "${DC_DIR}/${file}"
    if {[file exists $src]} {
        file copy -force $src $SNAPSHOT_DIR/
    } else {
        puts "WARNING: Arquivo nao encontrado: $src"
    }
}

puts ""
puts "RUN NAME: $RUN_NAME"
puts "RUN DIR: $RUN_DIR"
puts "REPORTS: $REPORTS_DIR"
puts "OUTPUTS: $OUTPUTS_DIR"
puts "SNAPSHOTS: $SNAPSHOT_DIR"
puts ""

