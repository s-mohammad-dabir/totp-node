#!/bin/bash

# Stop and remove the Docker Compose services
echo "Stopping Docker Compose services..."
docker-compose down

# Check if the services stopped successfully
if [ $? -eq 0 ]; then
  echo "Docker Compose services stopped successfully."
else
  echo "Failed to stop Docker Compose services."
fi