from docker.io/library/golang:latest as build
RUN apt update && apt install -y libxml2 libxml2-dev

ADD . /src
RUN cd /src && go build -o /escpos cmd/epos-server/main.go 

cmd /escpos 

