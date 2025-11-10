# Base n8n image
FROM docker.n8n.io/n8nio/n8n:latest

# Switch to node user (default)
USER node

# Install libraries for node user
RUN npm install @turf/turf proj4 geolib

# Expose n8n port
EXPOSE 5678

# Run n8n normally
# CMD ["n8n"]
