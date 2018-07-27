FROM alpine:latest
MAINTAINER Joost van der Laan

ENV HUGO_VERSION 0.39-r0

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community" \
    >> /etc/apk/repositories && \
  apk --no-cache add 'hugo=${HUGO_VERSION}' py-pip git openssh-client && \
  pip install --upgrade pip && \
  pip install s3cmd
