# Change the current directory to the specified path where the Nginx reverse proxy project is located.
cd C:\Users\sadik\Downloads\nginxProxy\ngnixreverseproxy

# Print a message indicating that the latest code is being pulled from the GitHub repository.
echo "Pulling latest code from GitHub..."
# Pull the latest changes from the "main" branch of the GitHub repository.
git pull origin main

# Print a message indicating that Docker containers are being built and started.
echo "Building Docker containers using Docker Compose..."
# Use Docker Compose to build and start the containers.
# The "-d" flag runs the containers in detached mode (in the background).
# The "--build" flag ensures the images are rebuilt even if there are no changes.
# The "--scale app=3" flag starts 3 instances of the "app" service, providing load balancing.
docker-compose up -d --build --scale app=3