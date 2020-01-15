#!/bin/bash
# Delete all containers
podman rm $(podman ps -a -q)
# Delete all images
podman rmi $(podman images -q)
#podman rmi $(podman images -q) --force

