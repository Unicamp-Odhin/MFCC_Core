remove_design -all

define_design_lib WORK -path $work_path

foreach file {
    mfcc_pkg.sv
    pre_emphasis.sv
    fifo.sv
    window_buffer.sv
    hamming_window.sv
    complex_pkg.sv
    fft_radix2.sv
    base2log_fp.sv
    mel.sv
    dct.sv
    MFCC_Core.sv 
} {
    puts "Analyzing $file"
    analyze -format verilog $file
}

   verilator --top-module mfcc_tb 
  

