#!/bin/bash

echo "🚀 Setting up n8n development environment..."

# Install dependencies if not done
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    pnpm install
fi

# Build if not built
if [ ! -d "packages/cli/dist" ]; then
    echo "🔨 Building project..."
    pnpm build
fi

echo "✅ Development environment ready!"
echo ""
echo "📋 Available commands:"
echo "  pnpm dev     - Start development server"
echo "  pnpm build   - Build project"
echo "  pnpm test    - Run tests"
echo ""
echo "🌐 Access n8n at: http://localhost:5678"
echo "🗄️  Database: PostgreSQL on port 5432" 