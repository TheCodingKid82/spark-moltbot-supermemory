# Moltbot with Supermemory plugin
FROM clawdbot/clawdbot:latest

# Install Supermemory plugin
RUN npm install -g @supermemory/clawdbot-supermemory

# Expose the gateway port
EXPOSE 11434

# Run Moltbot gateway
CMD ["clawdbot", "gateway"]
