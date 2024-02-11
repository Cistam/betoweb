# Use the Nginx image as the base image
FROM nginx

# Update the package lists and install vim
RUN apt-get update && apt-get install -y vim

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the entire project to the /usr/share/nginx/html directory in the container
COPY . /usr/share/nginx/html

# Start Nginx when the container is started
CMD ["nginx", "-g", "daemon off;"]