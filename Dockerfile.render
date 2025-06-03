# Use Node.js 20.15.0 Alpine base
FROM node:20.15.0-alpine

# Install system dependencies
RUN apk add --no-cache tini

# Install n8n globally
RUN npm install -g n8n@1.94.1

# Create n8n user
RUN addgroup -g 1000 n8n && adduser -u 1000 -G n8n -s /bin/sh -D n8n

# Set working directory
WORKDIR /home/n8n
USER n8n

# Set environment
ENV NODE_ENV=development
ENV N8N_PORT=5678

# Expose port
EXPOSE 5678

# Use tini as entrypoint
ENTRYPOINT ["tini", "--"]
CMD ["n8n"] 