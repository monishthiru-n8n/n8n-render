FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Expose the port n8n runs on
EXPOSE 5678

# Start n8n with tunneling to ensure webhooks and external access
CMD ["n8n", "start", "--tunnel"]
