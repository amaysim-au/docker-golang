# Docker Golang

Go and friends (Glide, dep, git, bash, etc). Tagging follows Go versioning.

- Go
- [Glide](https://github.com/Masterminds/glide)
- [Dep](https://github.com/golang/dep)
- Git
- make
- bash
- gcc

## Usage

`$ docker run --rm amaysim/golang:1.8.3`

```bash
# build image locally if you want to test locally
$ make build
# go inside the container
$ make shell
# go version
> go version
# glide version
> glide --version
# go dep
> dep status
> exit
```

## Update Docker image

### New version of Golang

1. Change `GO_VERSION` of `Makefile`
2. Change `FROM` of `Dockerfile`
3. Build and test locally
4. Commit and push the changes
5. Tag the commit with the command `make gitTag`
6. Go to [hub.docker.com/amaysim](hub.docker.com/amaysim)
7. In `Build Details` tab, you should now see build `version` kicking off

### Fix for the current version

1. Do the fixes you want to do
2. Build and test locally
3. Commit and push the changes
4. Run `make gitTag`
5. Go to [hub.docker.com/amaysim](hub.docker.com/amaysim)
6. In `Build Details` tab, you should now see build `version` kicking off
