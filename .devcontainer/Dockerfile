FROM node:20-bullseye

# Install additional packages
RUN apt-get update && apt-get install -y \
    openssh-client \
    sudo \
    bash \
    git \
    && rm -rf /var/lib/apt/lists/*

# Create node user if it doesn't exist
RUN id -u node || useradd -m -s /bin/bash node

# Configure sudo for node user
RUN echo node ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/node && chmod 0440 /etc/sudoers.d/node

# Create workspaces directory
RUN mkdir -p /workspaces && chown node:node /workspaces

# Install and configure pnpm (as root)
RUN corepack enable && corepack prepare pnpm@latest --activate

# Switch to node user
USER node

# Configure pnpm store for node user
RUN mkdir -p ~/.pnpm-store && pnpm config set store-dir ~/.pnpm-store --global
