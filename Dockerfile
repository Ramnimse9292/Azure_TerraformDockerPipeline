# Use a base image
FROM ubuntu:20.04

# Install any dependencies (if needed)
RUN apt-get update && apt-get install -y curl

# Command to run when starting the container
CMD ["echo", "Hello, Docker!"]
