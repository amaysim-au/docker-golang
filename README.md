# Docker Golang

Go and friends (Glide, git, bash, etc). Tagging follows Go versioning.

- Go
- Glide
- Git
- make
- bash
- gcc

## Usage

`$ docker run --rm amaysim/golang:1.8.0`

```bash
# build image locally if you want to test locally
$ make dockerBuild
# go inside the container
$ make dockerShell
# go version
> go version
# glide version
> glide --version
> exit
```

## Update Docker image

### New version of Golang

1. Change `GO_VERSION` of `Makefile`
2. Change `FROM` of `Dockerfile`
3. Build and test locally
4. Commit and push the changes
5. Go to [hub.docker.com](hub.docker.com)
6. In `Build Settings` tab, add a new `Tag` with the new version like `v1.7.5`
8. Tag the commit with the command `make gitTag`
9. In `Build Details` tab, you should now see build `1.7.5` kicking off

### Fix for the current version

1. Do the fixes you want to do
2. Build and test locally
3. Commit and push the changes
4. Run `make gitTag`
5. Go to [hub.docker.com](hub.docker.com)
6. In `Build Details` tab, you should now see build and `1.7.5` kicking off
