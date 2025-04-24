FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Expose port (Render needs this)
EXPOSE 5678

# Run n8n database migrations, then stop
CMD ["sh", "-c", "n8n migrate && echo '✅ Migrations complete'"]
