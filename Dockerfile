FROM mhart/alpine-node:14

RUN \
  apk update && \
  apk add curl && \
  curl -sf https://up.apex.sh/install | BINDIR=/usr/local/bin sh

RUN \
  up upgrade && \
  up version

