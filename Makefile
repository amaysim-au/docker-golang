GO_VERSION = 1.8.3
IMAGE_NAME ?= amaysim/golang:$(GO_VERSION)
TAG = $(GO_VERSION)

dockerPull:
	docker pull $(IMAGE_NAME)
.PHONY: dockerPull

dockerBuild:
	docker build -t $(IMAGE_NAME) .
.PHONY: dockerBuild

dockerShell:
	docker run --rm -it -v $(CURDIR):/opt/app $(IMAGE_NAME) bash
.PHONY: dockerShell

gitTag:
	-git tag -d $(TAG)
	-git push origin :refs/tags/$(TAG)
	git tag $(TAG)
	git push origin $(TAG)
.PHONY: gitTag