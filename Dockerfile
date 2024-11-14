# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static content
RUN rm -rf ./*

# Copy your static website content to the container
# Replace './static' with the actual path to your local website directory
COPY ./static /usr/share/nginx/html/

# Expose port 80 so the container can be accessed via HTTP
EXPOSE 80

# Start Nginx in the foreground (this is necessary for Docker containers to run)
CMD ["nginx", "-g", "daemon off;"]
