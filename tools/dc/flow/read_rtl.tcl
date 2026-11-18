remove_design -all
set SAED32 "SAED32"

define_design_lib WORK -path $work_path

analyze -format verilog "/pdk/synopsys/saed32/SAED32_EDK/lib/sram/verilog/saed32sram.v"

foreach file {
    mfcc_pkg.sv
    pre_emphasis.sv
    fifo.sv
    window_buffer.sv
    hamming_window.sv
    long_mul_fixed.sv
    complex_pkg.sv
    fft_radix2.sv
    log2_fp.sv
    mel.sv
    
    sram_1r1w.sv 
    mel_table_rom.sv 
    cos_lut_rom.sv
    hamming_rom.sv
    twiddles_rom.sv
    dct.sv
    MFCC_Core.sv 
} {
    puts "Analyzing $file"
    analyze -format sverilog -define $SAED32 -vcs $file
}

