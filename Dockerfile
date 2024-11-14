# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Install Git to clone the repository
RUN apk update && apk add --no-cache git

# Set the working directory for Nginx
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static content
RUN rm -rf ./*

# Clone the GitHub repository containing the static website content
RUN git clone https://github.com/Rachana860/static-website.git .

# Expose port 80 so the container can be accessed via HTTP
EXPOSE 80

# Start Nginx in the foreground (this is necessary for Docker containers to run)
CMD ["nginx", "-g", "daemon off;"]
