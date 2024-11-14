# Use the official Nginx image from Docker Hub
FROM nginx:alpine

COPY . /usr/share/ngix/html

# Expose port 80 so the container can be accessed via HTTP
EXPOSE 80

# Start Nginx in the foreground (this is necessary for Docker containers to run)
CMD ["nginx", "-g", "daemon off;"]
