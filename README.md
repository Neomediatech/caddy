# About
(From [Caddy web site](https://caddyserver.com/docs/))  
Caddy is a powerful, extensible platform to serve your sites, services, and apps, written in Go.  
This Docker image adds plugins (listed below) not included in standard Caddy version.

## Caddy Docker Image with additional modules
- [x] [Caddy-Docker-Proxy](https://github.com/lucaslorentz/caddy-docker-proxy) by [Lucas Lorentz](https://github.com/lucaslorentz)
- [x] [Transform Encoder Module for Caddy's Logger](https://github.com/caddyserver/transform-encoder) by [Caddy guys](https://github.com/caddyserver/caddy)
- [ ] What else?

## Caddy Docker image with "extra" tag
This version has additional plugins:
- All from above, plus
- caddy-exec [abiosoft/caddy-exec](https://github.com/abiosoft/caddy-exec)
- caddy-l4 [mholt/caddy-l4](https://github.com/mholt/caddy-l4) by the [Author of the Caddy Web Server](https://github.com/mholt)

## Useful commands
- caddy list-modules
- ...

## How to run
Caddy with Docker awareness:  
`docker run --rm -it --name caddy -v /var/run/docker.sock:/var/run/docker.sock neomediatech/caddy`  
Caddy without Docker awareness:  
`docker run --rm -it --name caddy neomediatech/caddy caddy run`  

