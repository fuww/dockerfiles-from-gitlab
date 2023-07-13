FROM node:20-alpine

ENV HUGO_VERSION 0.46
ENV HUGO_SHA 96c431b1b76aed4833739966235098162b97ca9933e1ff2bcd09f7571842ea6b

RUN set -eux; \
        apk update; \
        apk add --no-cache bash \
	apk add --no-cache --virtual .fetch-deps \
		    ca-certificates \
            py-pip libpng-dev lcms2-dev alpine-sdk nasm autoconf automake git openssh \
            alpine-sdk \
		    openssl; \
            pip install --upgrade pip && \
            pip install s3cmd && \
            wget -O hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"; \
            echo "${HUGO_SHA} *hugo.tar.gz" | sha256sum -c -; \
            tar -C /usr/local/bin -xf hugo.tar.gz hugo; \
            rm hugo.tar.gz; \
            apk del .fetch-deps; \
            rm -rf ~/.cache \
            hugo version
RUN npm install -g firebase-tools
