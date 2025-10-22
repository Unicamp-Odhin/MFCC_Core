export DESIGN_NICKNAME = MFCC_Core
export DESIGN_NAME     = MFCC_Core
export PLATFORM        = asap7

export SYNTH_HIERARCHICAL ?= True
export SYNTH_MINIMUM_KEEP_SIZE ?= 10

export VERILOG_INCLUDE_DIRS = rtl

export VERILOG_FILES = rtl/MFCC_Core.sv \
	rtl/base2log.sv \
	rtl/complex_pkg.sv \
	rtl/dct.sv \
	rtl/fft_radix2.sv \
	rtl/fifo.sv \
	rtl/hamming_window.sv \
	rtl/mel.sv \
	rtl/mfcc_pkg.sv \
	rtl/pre_emphasis.sv \
	rtl/window_buffer.sv
export SDC_FILE      = /eda/processor_ci_perf/constraints/openroad.sdc



export ABC_AREA           = 1
export CORE_MARGIN        = 2
export MACRO_PLACE_HALO   = 3 3
export CORE_UTILIZATION   = 5
export PLACE_DENSITY      = 0.1

export SYNTH_HDL_FRONTEND = slang
export TNS_END_PERCENT    = 100