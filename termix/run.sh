#!/bin/sh

echo "=== TERMIX RUN.SH STARTED ==="

# Diagnose environment - these lines confirm this version of run.sh is active
echo "[termix addon] DATA_DIR before override: ${DATA_DIR:-not set}"
echo "[termix addon] /data contents: $(ls /data 2>/dev/null || echo 'empty or error')"

# Force DATA_DIR to HA's persistent volume regardless of upstream image defaults
export DATA_DIR=/data

echo "[termix addon] DATA_DIR set to: $DATA_DIR"

exec /entrypoint.sh
