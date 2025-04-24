FROM n8nio/n8n:latest-debian

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

EXPOSE 5678

# Directly call internal migration script
CMD ["sh", "-c", "node /usr/local/lib/node_modules/n8n/dist/src/commands/migrate.js && echo '✅ Migrations complete'"]
