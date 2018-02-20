FROM golang:1.10.0-stretch
LABEL maintainer="Frederic Lemay <frederic.lemay@amaysim.com.au>"
RUN apt-get update && apt-get install -y zip
CMD [ "go", "version" ]