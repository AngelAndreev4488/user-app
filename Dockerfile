# Use a Node.js base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Expose the port your app runs on (default for Vue is 8080)
EXPOSE 8080

# Command to start the app
CMD ["npm", "run", "serve"]
