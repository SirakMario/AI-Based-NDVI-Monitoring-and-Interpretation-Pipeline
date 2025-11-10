# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages globally
USER root

# Install @turf/turf globally to avoid path conflicts
RUN npm install -g @turf/turf

# Switch back to n8n user
USER node

# Start n8n
CMD ["n8n", "start"]
