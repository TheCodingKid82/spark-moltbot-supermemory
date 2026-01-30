# Moltbot with Supermemory plugin
FROM node:22-alpine

# Install git (needed for some deps) and bash
RUN apk add --no-cache git bash

# Create app directory
WORKDIR /app

# Initialize package.json and install clawdbot locally
RUN npm init -y && npm install clawdbot @supermemory/clawdbot-supermemory

# Run clawdbot gateway via node_modules/.bin
CMD ["./node_modules/.bin/clawdbot", "gateway"]
