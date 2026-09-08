source "${PROJECT_ROOT}/pdks/saed32/common.tcl"


set LIB_PATH_SRAM "${PDK_BASE}/lib/sram/"
set DB_PATH_SRAM "${PDK_BASE}/lib/sram/db_nldm"
set TARGET_LIBRARY_SRAM "saed32sram_tt1p05v25c.db"

set LIB_PATH_RVT "${PDK_BASE}/lib/stdcell_rvt/"
set DB_PATH_RVT "${PDK_BASE}/lib/stdcell_rvt/db_nldm"
set TARGET_LIBRARY_RVT "saed32rvt_tt1p05v25c.db"
set NDM_REFERENCE_LIB_DIRS_RVT [list \
    "${PDK_BASE}/lib/stdcell_rvt/ndm/saed32rvt_base_frame_timing.ndm" \
    "${PDK_BASE}/lib/stdcell_rvt/ndm/saed32rvt_pg_frame_timing.ndm" \
]

set CTS_LIB_CELL_PATTERN_LIST_RVT [list "*/NBUFF*LVT" "*/NBUFF*RVT" "*/INVX*_LVT" "*/INVX*_RVT" "*/CG*" "*/AOBUFX*_LVT" "*/AOINV*" "*/*DFF*"]

set LIB_PATH [join [list $LIB_PATH_SRAM $LIB_PATH_RVT] " "]
set DB_PATH [join [list $DB_PATH_SRAM $DB_PATH_RVT] " "]
set TARGET_LIBRARY [join [list $TARGET_LIBRARY_SRAM $TARGET_LIBRARY_RVT] " "]
set NDM_REFERENCE_LIB_DIRS [join [list $NDM_REFERENCE_LIB_DIRS_RVT] " "]

set CTS_LIB_CELL_PATTERN_LIST [concat $CTS_LIB_CELL_PATTERN_LIST_RVT]
