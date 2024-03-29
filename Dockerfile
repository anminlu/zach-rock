FROM alpine:3.10
LABEL maintainer="your@email.address"
RUN mkdir -p /opt/app
COPY ./rock /opt/app/rock
ENTRYPOINT ["/opt/app/rock", "-httpAddr=:80", "-domain=tunnel.zach-rock.com","-log=none"]