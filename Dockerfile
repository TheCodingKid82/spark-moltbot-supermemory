# Extend the official Clawdbot image from Docker Hub
FROM clawdbot/clawdbot:latest

# Install Supermemory plugin
RUN npm install @supermemory/clawdbot-supermemory
