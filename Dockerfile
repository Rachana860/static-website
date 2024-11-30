# Start with the nginx:alpine base image
FROM nginx:alpine

# Install git
RUN apk update && apk add --no-cache git

# Increase HTTP buffer size for large repositories
RUN git config --global http.postBuffer 524288000

# Set working directory
WORKDIR /usr/share/nginx/html

# Clean up any existing files in the directory
RUN rm -rf ./*

# Clone the repository
RUN git clone https://github.com/Rachana860/static-website.git .

# Expose port 80 (default for nginx)
EXPOSE 80

# Command to start nginx
CMD ["nginx", "-g", "daemon off;"]

