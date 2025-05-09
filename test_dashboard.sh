#!/bin/bash

echo "🔥 Generating CPU load for 30 seconds..."
# Run 4 CPU stress processes in background for 30 seconds
timeout 30s bash -c "while :; do :; done" &
timeout 30s bash -c "while :; do :; done" &
timeout 30s bash -c "while :; do :; done" &
timeout 30s bash -c "while :; do :; done" &

wait
echo "✅ Load generation complete. Check Netdata for CPU spike."
