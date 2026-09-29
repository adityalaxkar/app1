#!/bin/bash

set -e

IMAGE="$1"
CONTAINER_NAME="flask-devops-app"
HOST_PORT="8000"
CONTAINER_PORT="8000"

echo "Deploying image: $IMAGE"

echo "Pulling image: $IMAGE"

docker pull "$IMAGE"

echo "Stopping Old Containers If it Exists!!.."
docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

echo "Starting new container..."
docker run -d \
	--name "$CONTAINER_NAME" \
	-p "$HOST_PORT:$CONTAINER_PORT" \
	"$IMAGE"

echo "Deployment Completed"

echo "Running containers:"
docker ps

