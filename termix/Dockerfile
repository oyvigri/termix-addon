FROM ghcr.io/lukegus/termix:latest

# Override DATA_DIR so the Node.js backend writes to HA's persistent /data
ENV DATA_DIR=/data

# Patch the upstream entrypoint.sh at build time:
# It hardcodes /app/data in ~15 places; rewrite all of them to /data.
# The VOLUME ["/app/data"] in the upstream image creates an ephemeral anonymous
# volume at /app/data — by redirecting everything to /data we bypass it entirely.
RUN sed -i 's|/app/data|/data|g' /entrypoint.sh

COPY run.sh /app/scripts/run.sh
RUN chmod +x /app/scripts/run.sh
ENTRYPOINT ["/app/scripts/run.sh"]
