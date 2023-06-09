#!/bin/sh

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs, dan memiliki tag latest.
docker build -t karsajobs:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format 
docker tag karsajobs:latest ghcr.io/septriputraw/karsajobs:latest

# Login ke GitHub Packages via Terminal.
echo $CR_PAT | docker login ghcr.io -u septriputraw --password-stdin

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/septriputraw/karsajobs:latest