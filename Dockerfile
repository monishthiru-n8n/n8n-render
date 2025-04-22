FROM n8nio/n8n

# Expose the n8n port
EXPOSE 5678

# Switch to root to install ffmpeg
USER root

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Switch back to node user (required by n8n)
USER node
