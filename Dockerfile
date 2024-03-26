FROM registry.access.redhat.com/ubi9/ubi:9.3-1610
#FROM bash
RUN dnf -y install gcc make glibc-devel numactl-libs git; mkdir -m 777 /app
COPY hello.c /app
ENTRYPOINT whoami; ls -lag /; find /mnt; dd if=/dev/zero of=/mnt/hello/testfile bs=10M count=1000 oflag=direct; cd app; make hello; while [ 1 ]; do ./hello; sleep 60; done


