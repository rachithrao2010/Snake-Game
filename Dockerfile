# Use Node.js LTS version as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the public directory containing the game
COPY public/ ./public/

# Expose port for the web server
EXPOSE 8080

# Start live-server for hot reloading
CMD ["npx", "live-server", "public", "--port=8080", "--no-browser"]