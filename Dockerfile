# Use the official Node.js image from Docker Hub
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json for efficient caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your app will be running on
EXPOSE 5050

# Command to run your app
CMD ["node", "server.js"]
