FROM golang:1.14.15-stretch
LABEL maintainer="Frederic Lemay <frederic.lemay@amaysim.com.au>"
RUN apt-get update && apt-get install -y zip
RUN go get -u github.com/golang/dep/cmd/dep
CMD [ "go", "version" ]
