# Use the official Node.js image as base
FROM node:slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY ./src/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY ./src/* ./

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]