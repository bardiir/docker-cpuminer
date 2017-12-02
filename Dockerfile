FROM alpine

RUN	buildDeps="git \
	automake \
	autoconf \
	pkgconf \
	libcurl \
	curl-dev \
	make \
	g++ \
	bash" && \
	apk add --no-cache --update ${buildDeps} && \
	git clone https://github.com/OhGodAPet/cpuminer-multi.git && \
	cd cpuminer-multi && \
	./autogen.sh && \
	CFLAGS="-march=native" ./configure && \
	make
	
WORKDIR /cpuminer-multi
ENTRYPOINT	["./minerd"]