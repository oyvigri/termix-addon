#!/usr/bin/with-contenv bashio

rm -rf /app/data
ln -s /data /app/data

exec /entrypoint.sh
