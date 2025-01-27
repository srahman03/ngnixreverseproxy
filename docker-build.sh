cd C:\Users\sadik\Downloads\nginxProxy\ngnixreverseproxy

echo "Pulling latest code from GitHub..."
git pull origin main

echo "Building Docker containers using Docker Compose..."
docker-compose up -d --build --scale app=3