# Use a slim version of Python 3.9 as the base image.
# A slim image is a smaller, minimal image that only contains essential components.
FROM python:3.9-slim

# Set the working directory inside the container to /app.
# All subsequent commands and file references will be relative to this directory.
WORKDIR /app

# Copy all files from the current directory on the host machine 
# to the /app directory inside the container.
COPY . .

# Install the Python dependencies listed in the requirements.txt file.
# This ensures the application has all the necessary libraries to run.
RUN pip install -r requirements.txt

# Define the command to start the application when the container runs.
# Here, Gunicorn is used as the web server, binding to all interfaces (0.0.0.0)
# on port 5000, and pointing to the `app` object in the `wsgi.py` file.
CMD gunicorn --bind 0.0.0.0:5000 wsgi:app