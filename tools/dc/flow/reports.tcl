redirect $REPORTS_DIR/area.rpt {
    report_area
}

redirect $REPORTS_DIR/timing.rpt {
    report_timing
}

redirect $REPORTS_DIR/power.rpt {
    report_power
}

redirect $REPORTS_DIR/fsm.rpt {
    report_fsm -verbose
}

redirect $REPORTS_DIR/constraints.rpt {
    report_constraints -all_violators
}

report_scan_path -view existing_dft -chain all

write_scan_def \
    -output $REPORTS_DIR/dft.scandef