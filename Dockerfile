FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/kiranpachhai/hello_go
RUN cp /gopath/src/github.com/kiranpachhai/hello_go/Dockerfile /gopath
CMD docker build -t kiranpachhai/hello_go gopath
