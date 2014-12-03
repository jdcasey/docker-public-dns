#!/bin/bash

docker stop public-dns || echo "Already stopped."
docker rm public-dns || echo "No container to remove"
docker rmi public-dns || echo "No image to remove"
docker build --tag=public-dns . || exit 1
docker run -d -p 1053:1053/tcp -p 1053:1053/udp --name=public-dns public-dns

