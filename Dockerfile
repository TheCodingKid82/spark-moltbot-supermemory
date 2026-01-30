# Build Moltbot with Supermemory plugin
FROM node:22-alpine

# Install git for cloning
RUN apk add --no-cache git

# Set working directory
WORKDIR /app

# Clone Moltbot from upstream
RUN git clone --depth 1 https://github.com/moltbot/moltbot.git .

# Install dependencies
RUN npm install

# Install Supermemory plugin
RUN npm install @supermemory/clawdbot-supermemory

# Expose the gateway port
EXPOSE 11434

# Run Moltbot
CMD ["npm", "start"]
