# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application’s code
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
