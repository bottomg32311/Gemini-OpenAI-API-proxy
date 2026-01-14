# Use Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Build the app (if needed)
RUN npm run build --if-present

# Expose the port (usually 8080 for this proxy)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
