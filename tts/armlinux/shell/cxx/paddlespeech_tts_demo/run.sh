#!/bin/bash

cd "$(dirname "$(realpath "$0")")"

# run
./build/paddlespeech_tts_demo ./models/cpu/fastspeech2_csmsc_arm.nb ./models/cpu/mb_melgan_csmsc_arm.nb 1
