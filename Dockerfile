FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

EXPOSE 5678

# Run n8n with migrations first
CMD ["sh", "-c", "n8n start --migrate && echo '✅ Migrations complete'"]
