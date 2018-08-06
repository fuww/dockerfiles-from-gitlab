FROM node:8-alpine

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/community" \
    >> /etc/apk/repositories

RUN apk add --no-cache \
      hugo \
      py-pip bash libpng-dev lcms2-dev alpine-sdk nasm autoconf automake git openssh && \
      pip install --upgrade pip && \
      pip install s3cmd && \
      rm -rf ~/.cache \
      hugo version
