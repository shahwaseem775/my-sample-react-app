# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the React application
CMD ["npm", "start"]
