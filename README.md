# Docker Golang

Go, Dep, and Git

## Usage

`$ docker run --rm amaysim/golang:1.10.0-stretch`

```bash
# build image locally if you want to test locally
$ make build
# go inside the container
$ make shell
```

## Update Docker image

1. Apply the changes

> For Golang version update, Makefile and Dockerfile need to be updated

1. Build and test locally
1. Commit and push
1. Run `$ make tag`
1. Go to [hub.docker.com](https://hub.docker.com/r/amaysim/golang/)
1. In `Build Details` tab, you should now see the build kicking off

## Links

- [amaysim/golang](https://hub.docker.com/r/amaysim/golang/) on Docker Hub