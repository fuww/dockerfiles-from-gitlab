FROM gcr.io/cloudshell-images/cloudshell:latest

# Add your content here

# Ugly, but works
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update -y
RUN apt-get install esl-erlang -y
RUN apt-get install elixir -y












# # buildpack-deps/stretch/curl/Dockerfile
# RUN apt-get update && apt-get install -y --no-install-recommends \
# 		ca-certificates \
# 		curl \
# 		netbase \
# 		wget \
# 	&& rm -rf /var/lib/apt/lists/*

# RUN set -ex; \
# 	if ! command -v gpg > /dev/null; then \
# 		apt-get update; \
# 		apt-get install -y --no-install-recommends \
# 			gnupg \
# 			dirmngr \
# 		; \
# 		rm -rf /var/lib/apt/lists/*; \
# 	fi

# # buildpack-deps/stretch/scm/Dockerfile
# # procps is very common in build systems, and is a reasonably small package
# RUN apt-get update && apt-get install -y --no-install-recommends \
# 		bzr \
# 		git \
# 		mercurial \
# 		openssh-client \
# 		subversion \
# 		\
# 		procps \
# 	&& rm -rf /var/lib/apt/lists/*


# # buildpack-deps/stretch/Dockerfile
# RUN set -ex; \
# 	apt-get update; \
# 	apt-get install -y --no-install-recommends \
# 		autoconf \
# 		automake \
# 		bzip2 \
# 		dpkg-dev \
# 		file \
# 		g++ \
# 		gcc \
# 		imagemagick \
# 		libbz2-dev \
# 		libc6-dev \
# 		libcurl4-openssl-dev \
# 		libdb-dev \
# 		libevent-dev \
# 		libffi-dev \
# 		libgdbm-dev \
# 		libgeoip-dev \
# 		libglib2.0-dev \
# 		libjpeg-dev \
# 		libkrb5-dev \
# 		liblzma-dev \
# 		libmagickcore-dev \
# 		libmagickwand-dev \
# 		libncurses5-dev \
# 		libncursesw5-dev \
# 		libpng-dev \
# 		libpq-dev \
# 		libreadline-dev \
# 		libsqlite3-dev \
# 		libssl-dev \
# 		libtool \
# 		libwebp-dev \
# 		libxml2-dev \
# 		libxslt-dev \
# 		libyaml-dev \
# 		make \
# 		patch \
# 		xz-utils \
# 		zlib1g-dev \
# 		\
# # https://lists.debian.org/debian-devel-announce/2016/09/msg00000.html
# 		$( \
# # if we use just "apt-cache show" here, it returns zero because "Can't select versions from package 'libmysqlclient-dev' as it is purely virtual", hence the pipe to grep
# 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then \
# 				echo 'default-libmysqlclient-dev'; \
# 			else \
# 				echo 'libmysqlclient-dev'; \
# 			fi \
# 		) \
# 	; \
# 	rm -rf /var/lib/apt/lists/*




# #RUN apt install libwxgtk3.0-0 -y
# # RUN apt-get install -y --no-install-recommends libodbc1 libsctp1 libwxbase3.0-0 libwxgtk3.0-0

# RUN echo "deb http://deb.debian.org/debian stretch main \
#             deb-src http://deb.debian.org/debian stretch main" > /etc/apt/sources.list
# RUN apt-get install build-essential git wget libssl-dev libreadline-dev libncurses5-dev zlib1g-dev m4 curl wx-common libwxgtk3.0-dev autoconf

# ENV OTP_VERSION="21.0.4"

# # We'll install the build dependencies for erlang-odbc along with the erlang
# # build process:
# RUN set -xe \
# 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" \
# 	&& OTP_DOWNLOAD_SHA256="8830c81042835070d72130a0df78058a5ccb8db9f93829310d93ed6e2e323e0d" \
# 	&& runtimeDeps='libodbc1 \
# 			libsctp1 \
# 			libwxgtk3.0' \
# 	&& buildDeps='unixodbc-dev \
# 			libsctp-dev \
# 			libwxgtk3.0-dev' \
# 	&& apt-get update \
# 	&& apt-get install -y --no-install-recommends $runtimeDeps \
# 	&& apt-get install -y --no-install-recommends $buildDeps \
# 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" \
# 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - \
# 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" \
# 	&& mkdir -vp $ERL_TOP \
# 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 \
# 	&& rm otp-src.tar.gz \
# 	&& ( cd $ERL_TOP \
# 	  && ./otp_build autoconf \
# 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" \
# 	  && ./configure --build="$gnuArch" \
# 	  && make -j$(nproc) \
# 	  && make install ) \
# 	&& find /usr/local -name examples | xargs rm -rf \
# 	&& apt-get purge -y --auto-remove $buildDeps \
# 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*

# # CMD ["erl"]

# # extra useful tools here: rebar & rebar3

# ENV REBAR_VERSION="2.6.4"

# RUN set -xe \
# 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" \
# 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" \
# 	&& mkdir -p /usr/src/rebar-src \
# 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" \
# 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - \
# 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 \
# 	&& rm rebar-src.tar.gz \
# 	&& cd /usr/src/rebar-src \
# 	&& ./bootstrap \
# 	&& install -v ./rebar /usr/local/bin/ \
# 	&& rm -rf /usr/src/rebar-src

# ENV REBAR3_VERSION="3.6.1"

# RUN set -xe \
# 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" \
# 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" \
# 	&& mkdir -p /usr/src/rebar3-src \
# 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" \
# 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - \
# 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 \
# 	&& rm rebar3-src.tar.gz \
# 	&& cd /usr/src/rebar3-src \
# 	&& HOME=$PWD ./bootstrap \
# 	&& install -v ./rebar3 /usr/local/bin/ \
# 	&& rm -rf /usr/src/rebar3-src



# # elixir expects utf8.
# ENV ELIXIR_VERSION="v1.7.1" \
# 	LANG=C.UTF-8

# RUN set -xe \
# 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION#*@}.tar.gz" \
# 	&& ELIXIR_DOWNLOAD_SHA256="527af54775401cc5074ea698b9b6a6d67c5103056d2949638c101bc6f233e954" \
# 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL \
# 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - \
# 	&& mkdir -p /usr/local/src/elixir \
# 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz \
# 	&& rm elixir-src.tar.gz \
# 	&& cd /usr/local/src/elixir \
# 	&& make install clean

# To trigger a rebuild of your Cloud Shell image:

# 1. Commit your changes locally: git commit -a
# 2. Push your changes upstream: git push origin master

# This triggers a rebuild of your image hosted at https://gcr.io/kubernetes-164514/elixir
# You can find the Cloud Source Repository hosting this file at https://source.developers.google.com/p/kubernetes-164514/r/elixir
# To trigger a rebuild of your Cloud Shell image:

# 1. Commit your changes locally: git commit -a
# 2. Push your changes upstream: git push origin master

# This triggers a rebuild of your image hosted at https://gcr.io/kubernetes-164514/erlang-elixir
# You can find the Cloud Source Repository hosting this file at https://source.developers.google.com/p/kubernetes-164514/r/erlang-elixir
