FROM zburgermeiszter/alpine-scratch-armhf:3.4

MAINTAINER Zoltan Burgermeiszter <zoltan@burgermeiszter.com>

RUN apk --update --no-cache add curl && \
    curl -Lo glibc-2.22-r8.apk https://github.com/armhf-docker-library/alpine-pkg-glibc/releases/download/2.22/glibc-2.22-r8.apk && \
    curl -Lo glibc-bin-2.22-r8.apk https://github.com/armhf-docker-library/alpine-pkg-glibc/releases/download/2.22/glibc-bin-2.22-r8.apk && \
    curl -Lo glibc-i18n-2.22-r8.apk https://github.com/armhf-docker-library/alpine-pkg-glibc/releases/download/2.22/glibc-i18n-2.22-r8.apk && \
    apk add --allow-untrusted *.apk && \
    rm *.apk && \
    apk del curl && \
    rm -rf /var/cache/apk/*

