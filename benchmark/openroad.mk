export DESIGN_NICKNAME = MFCC_Core
export DESIGN_NAME     = MFCC_Core
export PLATFORM        = asap7

export SYNTH_HIERARCHICAL ?= True
export SYNTH_MINIMUM_KEEP_SIZE ?= 10


export VERILOG_FILES = mfcc_NFFT512_F16.v
export SDC_FILE      = /eda/processor_ci_perf/constraints/openroad.sdc




export ABC_AREA           = 1
export CORE_MARGIN        = 2
export MACRO_PLACE_HALO   = 3 3
export CORE_UTILIZATION   = 5
export PLACE_DENSITY      = 0.1


export SYNTH_HDL_FRONTEND = slang
export TNS_END_PERCENT    = 100
# LEC (kepler-formal) no fim do flow estoura memoria em designs grandes;
# o objetivo do sweep e rodar o flow fisico completo
export LEC_CHECK = 0


# export FLOORPLAN_TCL = /eda/projetos/MFCC_Core/floorplan.tcl
export SYNTH_MEMORY_MAX_BITS=608640