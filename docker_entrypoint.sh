#!/bin/bash
set -m
./start_emulator.sh &
./setup_bigtable.sh
fg %1
