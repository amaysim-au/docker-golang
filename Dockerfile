FROM golang:1.21.3-bullseye
LABEL maintainer="Frederic Lemay <frederic.lemay@amaysim.com.au>"
RUN apt-get update && apt-get install -y zip
RUN git config --global url.git@github.com:.insteadOf https://github.com/
CMD [ "go", "version" ]
