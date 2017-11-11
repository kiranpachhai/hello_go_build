FROM golang:1.9-alpine3.6
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/kiranpachhai/hello_go
RUN cp /go/src/github.com/kiranpachhai/hello_go/Dockerfile /go
CMD docker build -t kiranpachhai/hello_go go
