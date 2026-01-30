# Moltbot with Supermemory plugin
FROM node:22-alpine

# Install git (needed for some deps)
RUN apk add --no-cache git

# Install clawdbot globally
RUN npm install -g clawdbot

# Install Supermemory plugin
RUN npm install -g @supermemory/clawdbot-supermemory

# Create workspace
WORKDIR /app

# Expose the gateway port
EXPOSE 11434

# Run Moltbot gateway
CMD ["clawdbot", "gateway"]
