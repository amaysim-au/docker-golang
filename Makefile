GO_VERSION = 1.7.5
IMAGE_NAME ?= amaysim/golang:$(GO_VERSION)

dockerPull:
	docker pull $(IMAGE_NAME)
.PHONY: dockerPull

dockerBuild:
	docker build -t $(IMAGE_NAME) .
.PHONY: dockerBuild

dockerShell:
	docker run --rm -it -v $(PWD):/opt/app $(IMAGE_NAME) bash
.PHONY: dockerShell

gitTag:
	-git tag -d v$(GO_VERSION)
	-git push origin :refs/tags/v$(GO_VERSION)
	git tag $(GO_VERSION)
	git push origin v$(GO_VERSION)
.PHONY: gitTag