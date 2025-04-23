FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Set environment variables using Render’s dashboard, not Dockerfile
# (so we don't override or duplicate anything accidentally)

# Start n8n (will run as root — OK in Render)
CMD ["npx", "n8n", "migrate:up"]


