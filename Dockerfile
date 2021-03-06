# Gerar uma imagem golang
# quando der Run, printar Code.education Rocks!
# go trabalha de forma compilada...
# imagem golang não pode ter mais que 2mbs
FROM golang:1.17-alpine AS base
WORKDIR /go/src/app
COPY hello-world.go .
RUN go build hello-world.go

FROM scratch
WORKDIR /go/src/app
COPY --from=base /go/src/app/hello-world .
CMD [ "./hello-world" ]
