set PROJECT_ROOT $::env(PROJECT_ROOT)

source "${PROJECT_ROOT}/pdks/saed32/common.tcl"

set LIB_PATH "${PDK_BASE}/lib/stdcell_rvt/"
set DB_PATH "${PDK_BASE}/lib/stdcell_rvt/db_nldm"
set TARGET_LIBRARY "${PDK_BASE}/lib/stdcell_hvt/db_nldm/saed32rvt_tt1p05v25c.db"

set NDM_REFERENCE_LIB_DIRS  " \
    ${PDK_BASE}/lib/stdcell_rvt/ndm/saed32rvt_base_frame_timing.ndm \
    ${PDK_BASE}/lib/stdcell_rvt/ndm/saed32rvt_pg_frame_timing.ndm"

set CTS_LIB_CELL_PATTERN_LIST   "*/NBUFF*LVT */NBUFF*RVT */INVX*_LVT */INVX*_RVT */CG* */AOBUFX*_LVT */AOINV* */*DFF*"