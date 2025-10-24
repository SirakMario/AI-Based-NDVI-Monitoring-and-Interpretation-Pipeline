# Use the official Debian-based n8n image
FROM n8nio/n8n:slim

# Switch to root to install Python
USER root

# Install Python 3, pip, and required system dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-dev build-essential git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy Python requirements and install dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Switch back to node user for security
USER node

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
