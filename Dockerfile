FROM bash
RUN apk add gcc make libc-dev
COPY hello.c /
ENTRYPOINT make hello;./hello


