FROM mhart/alpine-node:14

RUN \
  apk update && \
  apk add curl && \
  apk add git make musl-dev go && \
  curl -sf https://up.apex.sh/install | BINDIR=/usr/local/bin sh

RUN \
  up upgrade && \
  up version

