#!/bin/bash
gcloud beta emulators bigtable start --host-port=0.0.0.0:8086
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start BigTable emulator: $status"
  exit $status
fi
