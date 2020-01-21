FROM bash
RUN apk add gcc make libc-dev; mkdir /app
COPY hello.c /app
ENTRYPOINT whoami; ls -lag /;cd app; make hello;./hello


