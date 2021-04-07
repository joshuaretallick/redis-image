# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some dependencies, and copy in required files
COPY ./ ./
RUN npm install

# Default command
CMD ["npm", "start"]
