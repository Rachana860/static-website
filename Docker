# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the content of the local 'static-website' directory to the Nginx default html folder
COPY ./static-website /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
