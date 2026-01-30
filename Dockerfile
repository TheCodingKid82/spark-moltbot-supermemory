# Build Moltbot with Supermemory plugin
FROM node:22-alpine

# Install git and pnpm
RUN apk add --no-cache git
RUN corepack enable && corepack prepare pnpm@latest --activate

# Set working directory
WORKDIR /app

# Clone Moltbot from upstream
RUN git clone --depth 1 https://github.com/moltbot/moltbot.git .

# Install dependencies with pnpm
RUN pnpm install

# Build the project
RUN pnpm build

# Install Supermemory plugin
RUN pnpm add @supermemory/clawdbot-supermemory

# Expose the gateway port
EXPOSE 11434

# Run Moltbot gateway
CMD ["pnpm", "start", "gateway"]
