FROM caddy
LABEL org.opencontainers.image.source=https://github.com/lion7/domain-for-sale
COPY public /usr/share/caddy
