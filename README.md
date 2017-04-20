# Introduction to Docker

## Installing Docker

First download and install Docker following the instructions at https://docs.docker.com/docker-for-windows/install/#download-docker-for-windows

## Building the image

Run

```
docker build . --tag my-image
```

## Running the app!

Run

```
docker run -i -p 3000:3000 my-image
```
