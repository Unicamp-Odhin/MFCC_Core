set PDK_BASE "/pdk/synopsys/saed32/SAED32_EDK"
set TECH_FILE "${PDK_BASE}/tech/tf/saed32nm_1p9m.tf"
set MAP_FILE "${PDK_BASE}/tech/starrc/saed32nm_tf_itf_tluplus.map"
set TLUPLUS_MAX_FILE "${PDK_BASE}/tech/starrc/nominal/saed32nm_1p9m_nominal.tluplus"
set TLUPLUS_MIN_FILE "${PDK_BASE}/tech/starrc/nominal/saed32nm_1p9m_nominal.tluplus"

set MIN_ROUTING_LAYER "M1"
set MAX_ROUTING_LAYER "M9"

set MW_POWER_NET   "VCCD"
set MW_GROUND_NET  "VSSD"
set MW_POWER_PORT  "VCCD"
set MW_GROUND_PORT "VSSD"

set LIB_IO_PATH "${PDK_BASE}/lib/io_std/db_ccs"

set ROUTING_LAYER_DIRECTION_OFFSET_LIST "{M1 horizontal} {M2 vertical} {M3 horizontal} {M4 vertical} {M5 horizontal} {M6 vertical} {M7 horizontal} {M8 vertical} {M9 horizontal} {MRDL vertical} "

set TCL_MV_SETUP_FILE     ""
set TCL_PG_CREATION_FILE  ""
set TIE_LIB_CELL_PATTERN_LIST "*/TIE*"

set NDM_DESIGN_LIB "MFCC.dlib"

set SRAM_DB_DIR "${PDK_BASE}/lib/sram/db_nldm"
set SRAM_DB_MAX "${SRAM_DB_DIR}/saed32sram_ss0p95v25c.db"
set SRAM_DB_MIN "${SRAM_DB_DIR}/saed32sram_ff1p16v25c.db"
set SRAM_DB_TYP "${SRAM_DB_DIR}/saed32sram_tt1p05v25c.db"