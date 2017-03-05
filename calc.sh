#!/usr/bin/env bash
set -e
INPUT=upstream/output
mkdir -p output
inkomst=$(cat ${INPUT}/pensionsratter.txt)
PREMIEPENSION=$(cat ${INPUT}/premiepension.txt)
res=$(echo "scale=0; (${inkomst} * ${PREMIEPENSION}) / 1" | bc -l)
echo ${res} > output/premiepension.txt
