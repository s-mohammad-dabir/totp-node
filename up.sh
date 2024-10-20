#!/bin/bash

# Start the Docker Compose services
echo "Starting Docker Compose services..."
docker-compose up -d

# Check if the services started successfully
if [ $? -eq 0 ]; then
  echo "Docker Compose services started successfully."
else
  echo "Failed to start Docker Compose services."
fi