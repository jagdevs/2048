FROM alpine:latest
RUN apk add --no-cache nginx

# Create a directory for pid and run files
RUN mkdir -p /run/nginx

# Remove the default server definition
RUN rm /etc/nginx/http.d/default.conf

# Copy Nginx config and html files ...
COPY nginx.conf /etc/nginx/http.d/
COPY src /var/www/

# Expose port 80 to the outside
EXPOSE 80

# Start nginx and keep the process from backgrounding and the container from quitting
CMD ["nginx", "-g", "daemon off;"]

