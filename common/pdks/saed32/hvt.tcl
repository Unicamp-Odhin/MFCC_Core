set PROJECT_ROOT $::env(PROJECT_ROOT)

source "${PROJECT_ROOT}/common/pdks/saed32/common.tcl"

set LIB_PATH "${PDK_BASE}/lib/stdcell_hvt"
set DB_PATH "${PDK_BASE}/lib/stdcell_hvt/db_nldm"

set STD_DB_MAX "${PDK_BASE}/lib/stdcell_hvt/db_nldm/saed32hvt_ss0p95v25c.db"
set STD_DB_MIN "${PDK_BASE}/lib/stdcell_hvt/db_nldm/saed32hvt_ff1p16v25c.db"
set STD_DB_TYP "${PDK_BASE}/lib/stdcell_hvt/db_nldm/saed32hvt_tt1p05v25c.db"

set NDM_REFERENCE_LIB_DIRS  " \
    ${PDK_BASE}/lib/stdcell_hvt/ndm/saed32hvt_base_frame_timing.ndm \
    ${PDK_BASE}/lib/stdcell_hvt/ndm/saed32hvt_pg_frame_timing.ndm"

set CTS_LIB_CELL_PATTERN_LIST   "*/NBUFF*LVT */NBUFF*HVT */INVX*_LVT */INVX*_HVT */CG* */AOBUFX*_LVT */AOINV* */*DFF*"