#!/usr/bin/env bash
set -e
mkdir -p output
source ./fordelning.sh
INPUT=upstream/output
inkomst=$(cat ${INPUT}/pensionsratter.txt)
res=$(echo "scale=0; (${inkomst} * ${PREMIEPENSION}) / 1" | bc -l)
echo ${res} > output/premiepension.txt
