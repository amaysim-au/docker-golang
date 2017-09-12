FROM golang:1.9.0-alpine3.6
MAINTAINER Frederic Lemay <frederic.lemay@amaysim.com.au>

ENV GLIDE_VERSION=v0.12.3
ENV GLIDE_DOWNLOAD_URL=https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.zip

RUN apk add --no-cache --update git openssh ca-certificates curl make bash g++ \
  && update-ca-certificates \
  && rm -rf /var/cache/apk/*
RUN curl -fsSL "$GLIDE_DOWNLOAD_URL" -o glide.zip \
  && unzip glide.zip  linux-amd64/glide \
  && mv linux-amd64/glide /usr/local/bin \
  && rm -rf linux-amd64 \
  && rm glide.zip
RUN go get -u github.com/golang/dep/cmd/dep

CMD [ "go", "version" ]
