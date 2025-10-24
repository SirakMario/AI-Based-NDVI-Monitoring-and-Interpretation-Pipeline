# Use the official n8n image as the base
FROM n8nio/n8n:latest

# Switch to root to install system packages
USER root

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements.txt and install Python dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Switch back to node user
USER node

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
