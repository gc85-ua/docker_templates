# Reverse Proxy with Traefik, Cloudflare and Let's Encrypt

A template to run a reverse proxy protected with Cloudflare and automatic SSL certificates from Let's Encrypt using Traefik. This setup allows you to easily route traffic to your applications while ensuring secure connections with SSL/TLS certificates managed automatically by Traefik.

## Requirements
- Docker and Docker Compose installed on your server
- A domain name managed by Cloudflare
- A Cloudflare API token with permissions to manage DNS records for your domain, see [.env.example](./.env.example).

## Setup Instructions
1. Configure your domain in Cloudflare to point to your server's IP address, and ensure that the DNS record is set to "Proxied" (orange cloud icon) to enable Cloudflare's reverse proxy features.
2. Create a `.env` file in the same directory as `docker-compose.yml` based on the provided `.env.example` and fill in your Cloudflare API token.
3. Create docker network named `reverse-proxy`: `docker network create -d bridge reverse-proxy`
4. Modify the `docker-compose.yml` file to replace placeholders with your actual domain and email address.
5. Run `docker-compose up -d` to start the Traefik reverse proxy and your example application.

## Explanation
- Traefik is configured to listen on ports 80 and 443, with automatic HTTP to HTTPS redirection for better security.
- The ACME certificate resolver is set up to use Cloudflare's DNS challenge, allowing Traefik to automatically obtain and renew SSL certificates from Let's Encrypt using Cloudflare's API to prove domain ownership.
- The example application is configured with Traefik labels to route traffic based on the Host header, use the HTTPS entrypoint, and apply a middleware to pass the correct client IP from Cloudflare to the app, which is necessary because Cloudflare acts as a reverse proxy and can mask the original client IP.
- The Traefik dashboard is exposed on port 8080, but only accessible from localhost for security reasons. You can access it at `http://localhost:8080/dashboard/` to monitor your routes, services, and certificate status.
- Any container with the appropriate Traefik labels can be automatically discovered and routed by Traefik, making it easy to add new applications to your reverse proxy setup without needing to modify the Traefik configuration.