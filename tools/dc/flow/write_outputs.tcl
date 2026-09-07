write \
    -format verilog \
    -hierarchy \
    -output $OUTPUTS_DIR/top_syn.v

write_file \
    -format ddc \
    -hierarchy \
    -output $OUTPUTS_DIR/top.ddc

write_sdc $OUTPUTS_DIR/top.sdc

#Saving latest outputs snapshot

set LATEST_DIR "${DC_DIR}/outputs_latest"
file mkdir $LATEST_DIR
file copy -force $OUTPUTS_DIR/top_syn.v $LATEST_DIR/top_syn.v
file copy -force $OUTPUTS_DIR/top.ddc   $LATEST_DIR/top.ddc
file copy -force $OUTPUTS_DIR/top.sdc   $LATEST_DIR/top.sdc
puts "Updated latest outputs snapshot: $LATEST_DIR"