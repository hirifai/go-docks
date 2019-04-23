FROM golang:1.11 as builder

WORKDIR /github.com/go-dock/

COPY . .

# RUN dep ensure -v -update
# RUN export GOARCH="amd64"
# RUN export GOOS="linux"
# RUN export CGO_ENABLED=0

RUN go build -v -o ./dist/go-docks-rest

EXPOSE 8080

ENTRYPOINT [ "dist/go-docks-rest" ]