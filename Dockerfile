# Extend the official Clawdbot image
FROM ghcr.io/clawdbot/clawdbot:latest

# Install Supermemory plugin
RUN npm install @supermemory/clawdbot-supermemory

# Keep the same entrypoint/cmd from base image
