# Description: Dockerfile for the webapp service
# Use the official Node.js image as the base image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the content of the local src directory to the working directory
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Copy the content of the local src directory to the working directory
CMD ["yarn", "start"]
