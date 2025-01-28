# Import the Flask class from the flask module to create a web application.
from flask import Flask

# Import the socket module to get information about the container's hostname.
import socket 

# Create an instance of the Flask class for the web application.
# The name argument helps Flask determine the root path of the application.
app = Flask(__name__)

# Define a route for the root URL ("/").
# When a user visits this URL, the function `home` will be executed.
@app.route("/")
def home():
    # Return the container's hostname (unique identifier) as the response.
    # The hostname is retrieved using the `socket.gethostname()` function.
    return f"Container ID: {socket.gethostname()}"

# The `if __name__ == "__main__":` block ensures this script runs only 
# when executed directly (not when imported as a module).
if __name__ == "__main__":
    # Run the Flask development server in debug mode.
    # Debug mode provides helpful error messages and auto-reloads the server on code changes.
    app.run(debug=True)