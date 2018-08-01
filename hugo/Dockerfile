FROM alpine:latest
MAINTAINER Joost van der Laan

ARG VERSION=0.45.1

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -zxvf hugo.tar.gz

# ENV HUGO_VERSION 0.39-r0

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/community" \
    >> /etc/apk/repositories && \
  apk --no-cache add py-pip git openssh-client && \
  # apk --no-cache add "hugo=${HUGO_VERSION}" py-pip git openssh-client && \
  pip install --upgrade pip && \
  pip install s3cmd
