FROM node:17-stretch

ENV HUGO_VERSION 0.46
ENV HUGO_SHA 96c431b1b76aed4833739966235098162b97ca9933e1ff2bcd09f7571842ea6b

# Install pygments (for syntax highlighting)
RUN apt-get -qq update \
    && DEBIAN_FRONTEND=noninteractive apt-get -qq install -y --no-install-recommends wget s3cmd \
    && rm -rf /var/lib/apt/lists/*

# apt install -y py-pip bash libpng-dev lcms2-dev nasm autoconf automake git openssh \
# 		    openssl; \

RUN         wget -O hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"; \
            echo "${HUGO_SHA} *hugo.tar.gz" | sha256sum -c -; \
            tar -C /usr/local/bin -xf hugo.tar.gz hugo; \
            rm hugo.tar.gz; \
            rm -rf ~/.cache \
            hugo version
RUN npm install -g firebase-tools
