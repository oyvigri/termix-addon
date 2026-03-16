#!/bin/sh

echo "=== TERMIX RUN.SH STARTED ==="

# The upstream image declares VOLUME ["/app/data"], so Docker mounts an anonymous
# (ephemeral) volume there before this script runs — we cannot replace it with a symlink.
# Instead, bind-mount HA's persistent /data directory over /app/data so all the
# hardcoded /app/data paths in the upstream entrypoint resolve to persistent storage.
mount --bind /data /app/data

exec /entrypoint.sh
