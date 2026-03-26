#!/usr/bin/env bash

PDKS=("asap7" "gf180" "nangate45" "sky130hs" "ihp-sg13g2")

printf "%-12s %-15s %-15s\n" "PDK" "DP(W)" "SP(W)"
printf "%-12s %-15s %-15s\n" "------------" "---------------" "---------------"

for pdk in "${PDKS[@]}"; do

    file="reports/$pdk/MFCC_Core/base/6_finish.rpt"

    if [[ ! -f "$file" ]]; then
        printf "%-12s %-15s %-15s\n" "$pdk" "N/A" "N/A"
        continue
    fi

    # pega linha Total
    line=$(grep "^Total" "$file" | tail -1)

    internal=$(echo $line | awk '{print $2}')
    switching=$(echo $line | awk '{print $3}')
    leakage=$(echo $line | awk '{print $4}')

    # calcula DP = internal + switching
    dp=$(awk -v a="$internal" -v b="$switching" 'BEGIN{printf "%.6e", a+b}')

    # SP = leakage
    sp=$(awk -v a="$leakage" 'BEGIN{printf "%.6e", a}')

    printf "%-12s %-15s %-15s\n" "$pdk" "$dp" "$sp"

    done
