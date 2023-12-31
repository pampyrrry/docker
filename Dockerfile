ARG DEBIAN_TAG=11

FROM debian:${DEBIAN_TAG}
WORKDIR /myapp
ENV publisher=Video author=Dan
ADD skrypt.tar.xz /myapp/
RUN apt-get update && apt-get install curl -y
ENTRYPOINT sleep inf
VOLUME /myapp
EXPOSE 7000
