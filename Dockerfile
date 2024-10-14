# Use the lightweight nginx alpine image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy all SVG files into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]