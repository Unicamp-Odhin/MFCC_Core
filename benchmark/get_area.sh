#!/usr/bin/env bash

PDKS=("asap7" "gf180" "nangate45" "sky130hs" "ihp-sg13g2")

printf "%-12s %-20s\n" "PDK" "Area (um^2)"
printf "%-12s %-20s\n" "------------" "--------------------"

for pdk in "${PDKS[@]}"; do

    file="reports/$pdk/MFCC_Core/base/synth_stat.txt"

    if [[ ! -f "$file" ]]; then
        printf "%-12s %-20s\n" "$pdk" "N/A"
        continue
    fi

    area=$(grep "Chip area for top module" "$file" | awk '{print $7}')

    printf "%-12s %-20s\n" "$pdk" "$area"

done
