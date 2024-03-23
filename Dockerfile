FROM bash
RUN apk add gcc make libc-dev; mkdir -m 777 /app
COPY hello.c /app
ENTRYPOINT whoami; ls -lag /; find /; cd app; make hello; while [ 1 ]; do ./hello; sleep 60; done


