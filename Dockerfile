# Dockerfile
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 3000 for the Express app
EXPOSE 3000

# Command to run the app
CMD ["node", "main.js"]