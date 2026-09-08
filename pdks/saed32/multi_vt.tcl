source "${PROJECT_ROOT}/pdks/saed32/common.tcl"


set LIB_PATH_HVT "${PDK_BASE}/lib/stdcell_hvt/"
set DB_PATH_HVT "${PDK_BASE}/lib/stdcell_hvt/db_nldm"
set TARGET_LIBRARY "saed32hvt_tt1p05v25c.db"
set NDM_REFERENCE_LIB_DIRS_HVT [list \
    "${PDK_BASE}/lib/stdcell_hvt/ndm/saed32hvt_base_frame_timing.ndm" \
    "${PDK_BASE}/lib/stdcell_hvt/ndm/saed32hvt_pg_frame_timing.ndm" \
]
set CTS_LIB_CELL_PATTERN_LIST_HVT [list "*/NBUFF*LVT" "*/NBUFF*hvt" "*/INVX*_LVT" "*/INVX*_hvt" "*/CG*" "*/AOBUFX*_LVT" "*/AOINV*" "*/*DFF*"]

set LIB_PATH_RVT "${PDK_BASE}/lib/stdcell_rvt/"
set DB_PATH_RVT "${PDK_BASE}/lib/stdcell_rvt/db_nldm"
set target_library_rvt "saed32rvt_tt1p05v25c.db"
set NDM_REFERENCE_LIB_DIRS_RVT [list \
    "${PDK_BASE}/lib/stdcell_rvt/ndm/saed32rvt_base_frame_timing.ndm" \
    "${PDK_BASE}/lib/stdcell_rvt/ndm/saed32rvt_pg_frame_timing.ndm" \
]
set CTS_LIB_CELL_PATTERN_LIST_RVT [list "*/NBUFF*LVT" "*/NBUFF*RVT" "*/INVX*_LVT" "*/INVX*_RVT" "*/CG*" "*/AOBUFX*_LVT" "*/AOINV*" "*/*DFF*"]

# Se a ferramenta espera uma string separada por espaços, convertemos listas para string.
set LIB_PATH [join [list $LIB_PATH_HVT $LIB_PATH_RVT] " "]
set DB_PATH [join [list $DB_PATH_HVT $DB_PATH_RVT] " "]
set target_library [join [list $target_library_hvt $target_library_rvt] " "]
set NDM_REFERENCE_LIB_DIRS [join [list $NDM_REFERENCE_LIB_DIRS_HVT $NDM_REFERENCE_LIB_DIRS_RVT] " "]
# Para CTS, concatenamos as listas (pode ter duplicatas, mas não há problema)
set CTS_LIB_CELL_PATTERN_LIST [concat $CTS_LIB_CELL_PATTERN_LIST_HVT $CTS_LIB_CELL_PATTERN_LIST_RVT]
