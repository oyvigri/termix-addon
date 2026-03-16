#!/bin/sh

# 1. Remove the existing temporary directories
rm -rf /app/data
rm -rf /app/uploads

# 2. Create the persistent directory structure inside /data
mkdir -p /data/uploads

# 3. Create symbolic links linking /app/... to /data/...
ln -s /data /app/data
ln -s /data/uploads /app/uploads

echo "Symlinks created: /app/data -> /data, /app/uploads -> /data/uploads"

# 4. Execute the original entrypoint
exec /entrypoint.sh
