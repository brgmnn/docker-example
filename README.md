# Introduction to Docker

## Installing Docker

First download and install Docker following the instructions at https://docs.docker.com/docker-for-windows/install/#download-docker-for-windows

## Building the image

Build the image and name it `my-image`:
```
docker build . --tag my-image
```

## Running the app!

Create an instance of `my-image` listening on port 3000 of the local machine:
```
docker run -i -p 3000:3000 my-image
```

## Cleaning up

To remove all container instances, to only removed stopped containers don't pass `-f` to
`docker rm`:
```
docker rm -f $(docker ps -a -q)
```

To remove all images:
```
docker rmi $(docker images -a -q)
```

## License

MIT
