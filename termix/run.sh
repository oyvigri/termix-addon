#!/bin/sh

mkdir -p /share/termix
cp -R /share/termix/* /app/data/ 2>/dev/null || true

while true; do
    cp -R /app/data/* /share/termix/ 2>/dev/null || true
    sleep 30
done &

exec /entrypoint.sh
