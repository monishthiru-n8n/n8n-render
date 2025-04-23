FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Run DB migrations manually
CMD ["sh", "-c", "n8n migrate && echo 'Migration complete!'"]


