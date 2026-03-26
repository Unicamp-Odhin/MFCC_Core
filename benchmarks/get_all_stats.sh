#!/usr/bin/env bash

PDKS=("asap7" "gf180" "nangate45" "sky130hs" "ihp-sg13g2")

printf "%-12s %-12s %-12s %-12s %-12s %-12s\n" \
"PDK" "GateCnt" "Area(um2)" "Fmax(MHz)" "DP(W)" "SP(W)"

printf "%-12s %-12s %-12s %-12s %-12s %-12s\n" \
"------------" "------------" "------------" "------------" "------------" "------------"

for pdk in "${PDKS[@]}"; do

    synth="reports/$pdk/MFCC_Core/base/synth_stat.txt"
    finish="reports/$pdk/MFCC_Core/base/6_finish.rpt"

    if [[ ! -f "$synth" || ! -f "$finish" ]]; then
        printf "%-12s %-12s %-12s %-12s %-12s %-12s\n" \
        "$pdk" "N/A" "N/A" "N/A" "N/A" "N/A"
        continue
    fi


    # -------------------
    # Gate count + area
    # -------------------

    line=$(grep " cells" "$synth" | tail -1)

    gates=$(echo "$line" | awk '{print $1}')
    area=$(echo "$line" | awk '{print $2}')

    area_sci=$(awk -v a="$area" 'BEGIN{printf "%.3e", a}')


    # -------------------
    # Power (DP / SP)
    # -------------------

    power_line=$(grep "^Total" "$finish" | tail -1)

    internal=$(echo $power_line | awk '{print $2}')
    switching=$(echo $power_line | awk '{print $3}')
    leakage=$(echo $power_line | awk '{print $4}')

    dp=$(awk -v a="$internal" -v b="$switching" 'BEGIN{printf "%.3e", a+b}')
    sp=$(awk -v a="$leakage" 'BEGIN{printf "%.3e", a}')


    # -------------------
    # Fmax
    # Fmax = 1 / period
    # period vem do clock report
    # -------------------

    period=$(grep -i "clock period" "$finish" | tail -1 | awk '{print $3}')

    if [[ -z "$period" ]]; then
        fmax="N/A"
    else
        fmax=$(awk -v p="$period" 'BEGIN{printf "%.2f", 1000/p}')
    fi


    printf "%-12s %-12s %-12s %-12s %-12s %-12s\n" \
    "$pdk" "$gates" "$area_sci" "$fmax" "$dp" "$sp"

done
