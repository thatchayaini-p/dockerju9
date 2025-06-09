# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port (make sure your Node.js app listens on this port)
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
