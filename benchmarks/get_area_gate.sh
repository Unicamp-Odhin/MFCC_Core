#!/usr/bin/env bash

PDKS=("asap7" "gf180" "nangate45" "sky130hs" "ihp-sg13g2")

printf "%-12s %-15s %-15s\n" "PDK" "GateCount" "Area(um^2)"
printf "%-12s %-15s %-15s\n" "------------" "---------------" "---------------"

for pdk in "${PDKS[@]}"; do

    file="reports/$pdk/MFCC_Core/base/synth_stat.txt"

    if [[ ! -f "$file" ]]; then
        printf "%-12s %-15s %-15s\n" "$pdk" "N/A" "N/A"
        continue
    fi

    # pega a ÚLTIMA linha com "cells"
    line=$(grep " cells" "$file" | tail -1)

    gates=$(echo "$line" | awk '{print $1}')
    area=$(echo "$line" | awk '{print $2}')

    # força notação científica
    area_sci=$(awk -v a="$area" 'BEGIN{printf "%.3e", a}')

    printf "%-12s %-15s %-15s\n" "$pdk" "$gates" "$area_sci"

done
