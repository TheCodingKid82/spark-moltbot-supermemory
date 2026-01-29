# Extend the official Moltbot image from GitHub Container Registry
FROM ghcr.io/moltbot/moltbot:latest

# Install Supermemory plugin
RUN npm install @supermemory/clawdbot-supermemory
