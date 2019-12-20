FROM google/cloud-sdk:latest

ENV HUGO_VERSION 0.61.0

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  apt-get install -y build-essential npm curl jq ca-certificates && \
  rm -rf /var/lib/apt/lists/*
  
RUN npm i lerna -g --loglevel notice

RUN (cd /usr/local/bin; curl -qL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz | tar xz hugo)

ENV LANG=en_US.UTF-8
