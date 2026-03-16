#!/usr/bin/with-contenv bashio

# 1. Remove the temporary directories created by the image
rm -rf /app/data
rm -rf /app/uploads

# 2. Create the sub-folders inside the persistent /data folder
mkdir -p /data/uploads

# 3. Create symbolic links
# This forces the app to write to /data (persistent) instead of /app/data (temporary)
ln -s /data /app/data
ln -s /data/uploads /app/uploads

echo "Symlinks created successfully."

# 4. Run the original entrypoint script
exec /entrypoint.sh
