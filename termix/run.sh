#!/bin/sh

echo "=== TERMIX RUN.SH STARTED ==="

# Replace /app/data with a symlink to HA's persistent /data directory
# The upstream entrypoint hardcodes /app/data — symlink makes all paths resolve to /data
rm -rf /app/data
ln -s /data /app/data

exec /entrypoint.sh
