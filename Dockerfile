# Use the official n8n image
FROM docker.n8n.io/n8nio/n8n:latest

# Switch to root to install global packages
USER root

# Install @turf/turf globally
RUN npm install -g @turf/turf && \
    ln -sf /usr/local/bin/n8n /usr/bin/n8n

# Switch back to node user (for security)
USER node

# Expose the default n8n port
EXPOSE 5678

# Run n8n
CMD ["n8n"]
