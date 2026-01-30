# Moltbot with Supermemory plugin
FROM node:22-bookworm

# Install dependencies
RUN corepack enable

WORKDIR /app

# Initialize and install clawdbot
RUN npm init -y
RUN npm install clawdbot @supermemory/clawdbot-supermemory

# Run the gateway via the installed clawdbot binary
ENTRYPOINT ["node", "node_modules/clawdbot/dist/index.js"]
CMD ["gateway"]
