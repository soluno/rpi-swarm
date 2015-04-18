FROM scratch
MAINTAINER Dieter Reuter <dieter@hypriot.com>

COPY ./swarm /swarm
COPY ./certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

ENV SWARM_HOST :2375
EXPOSE 2375

VOLUME /.swarm

ENTRYPOINT ["/swarm"]
CMD ["--help"]
