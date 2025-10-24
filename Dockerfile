# Use the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install Python
USER root

# Install Python and pip using Alpine's package manager (apk)
RUN apk add --no-cache python3 py3-pip

# Copy Python requirements and install dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Switch back to node user for security
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
