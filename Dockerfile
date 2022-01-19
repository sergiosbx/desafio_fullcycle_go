FROM golang:1.17-alpine
WORKDIR /go/src/app
COPY hello-world.go .
RUN go build hello-world.go