#!/bin/sh

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format 
docker tag item-app:v1 ghcr.io/septriputraw/item-app:v1

# Login ke GitHub Packages via Terminal.
echo $CR_PAT | docker login ghcr.io -u septriputraw --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/septriputraw/item-app:v1