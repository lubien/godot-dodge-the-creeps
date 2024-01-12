# Use the official Caddy image as the base image
FROM caddy:2.4.5-alpine

# Copy the Caddyfile to the container
COPY Caddyfile /etc/caddy/Caddyfile

# Create a directory to store HTML files
WORKDIR /usr/share/caddy/html

# Copy HTML files into the container
COPY * /usr/share/caddy/html/

# Expose the necessary port
EXPOSE 8080

# Run Caddy with the specified Caddyfile
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
