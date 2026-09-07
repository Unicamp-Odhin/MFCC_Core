proc check_status {step_name cmd} {

    if {[catch {uplevel 1 $cmd} result]} {
        puts "ERRO DETECTADO NA ETAPA: $step_name"
        puts $result
        exit 1
    }

    puts "OK -> $step_name"
}

proc save_checkpoint {name} {

    global SNAPSHOT_DIR

    write_file \
        -format ddc \
        -hierarchy \
        -output "$FORMALITY_DIR/${name}.ddc"

    puts "Checkpoint salvo: $name"
}

#para usar depois: read_ddc snapshots/${name}.ddc