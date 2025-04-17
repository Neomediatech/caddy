ARG CADDY_VERSION=2.9
FROM caddy:${CADDY_VERSION}-builder AS builder

RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2 \
    --with github.com/caddyserver/transform-encoder

FROM caddy:${CADDY_VERSION}-alpine

ENV TZ=Europe/Rome

RUN apk add --no-cache tzdata

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "docker-proxy"]
