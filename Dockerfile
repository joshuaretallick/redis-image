# Specify a base image
FROM node:alpine

# Creates a directory to house copied in files
WORKDIR /usr/app

# Install some dependencies, and copy in required files
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
