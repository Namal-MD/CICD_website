# Use the official httpd image as the base image
FROM httpd:latest

# Copy your web application files to the httpd document root
COPY /path/to/your/webapp /usr/local/apache2/htdocs/

# Optional: if your web application requires additional dependencies, install them here
# For example:
# RUN apt-get update && apt-get install -y your-dependency

# Expose port 80 for incoming HTTP requests
EXPOSE 80

# Start the Apache httpd server when the container is run
CMD ["httpd-foreground"]
