remove_design -all

define_design_lib WORK -path $work_path

foreach file {
    mfcc_pkg.sv
    pre_emphasis.sv
    fifo.sv
    window_buffer.sv
    hamming_window.sv
    long_mul_fixed.sv
    complex_pkg.sv
    fft_radix2.sv
    base2log_fp.sv
    mel.sv
    cos_lut_rom.sv
    dct.sv
    MFCC_Core.sv 
} {
    puts "Analyzing $file"
    analyze -format sverilog $file
}
  

