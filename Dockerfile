# Specify the base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port if your application listens on a specific port
# EXPOSE <port>

# Run the command to start your Node.js application
CMD ["node", "app.js"]
