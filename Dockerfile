# Base n8n image
FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install libraries for node user
RUN npm install -g fs proj4 geolib geotiff


# Switch to node user (default)
USER node

