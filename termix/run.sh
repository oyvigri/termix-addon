#!/bin/sh

PERSISTENT_PATH="/share/termix"

# Ensure persistent directories exist
mkdir -p $PERSISTENT_PATH

# Restore data from persistent storage on startup
cp -R $PERSISTENT_PATH/* /app/data/ 2>/dev/null || true

# Start continuous sync in background
while true; do
    cp -R /app/data/* $PERSISTENT_PATH/ 2>/dev/null || true
    sleep 30
done &

# Start the app
exec /entrypoint.sh
