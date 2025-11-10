# Start from the official n8n image
FROM n8nio/n8n:latest

# Install your external library
RUN npm install @turf/turf


# Start n8n
CMD ["n8n", "start"]
