FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Use start with --tunnel to auto-run DB migrations
CMD ["n8n", "start", "--tunnel"]
