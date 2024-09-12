ARG CADDY_VERSION=2.8
FROM caddy:${CADDY_VERSION}-alpine

RUN caddy add-package github.com/caddyserver/transform-encoder \
                      github.com/lucaslorentz/caddy-docker-proxy/v2

CMD ["caddy", "docker-proxy"]
