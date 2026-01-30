# Extend the official Clawdbot image from GitHub Container Registry
FROM ghcr.io/clawdbot/clawdbot:latest

# Install Supermemory plugin
RUN npm install @supermemory/clawdbot-supermemory
