#!/bin/bash
$(gcloud beta emulators bigtable env-init)

sleep 20s
cbt createtable quote
cbt createfamily quote q
cbt count quote