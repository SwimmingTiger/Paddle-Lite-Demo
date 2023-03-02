#!/bin/bash

cd "$(dirname "$(realpath "$0")")"

# create dir
rm -rf ./output
mkdir -p ./output

# run
for i in {1..10}; do
    (set -x; ./build/paddlespeech_tts_demo ./models/cpu/fastspeech2_csmsc_arm.nb ./models/cpu/mb_melgan_csmsc_arm.nb $i ./output/$i.wav)
done
