#!/bin/bash

# Build the Docker image
docker build -t deep-live-cam .

# Run the Docker container
docker run --rm -it \
    --device /dev/video0:/dev/video0 \  # Pass through webcam device if needed
    deep-live-cam
