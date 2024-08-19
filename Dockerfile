FROM registry.access.redhat.com/ubi9/ubi:9.3-1610
#FROM bash
RUN dnf -y install gcc make glibc-devel numactl-libs git libaio; mkdir -m 777 /app
#RUN cd /app; git clone https://github.com/axboe/fio.git; cd fio/; make; make install;
COPY hello.c /app
#VOlUME hello-pvc /mnt/hello
ENTRYPOINT whoami; ls -lag /; find /mnt; dd if=/dev/zero of=/mnt/hello/testfile bs=10M count=1000 oflag=direct; cd app; make hello; while [ 1 ]; do ./hello; sleep 60; done


