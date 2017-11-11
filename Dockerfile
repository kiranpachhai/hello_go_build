FROM google/golang
#ENV http_proxy http://proxy-lmi.global.lmco.com:80
#ENV https_proxy http://proxy-lmi.global.lmco.com:80
RUN CGO_ENABLED=0 go get -insecure -a -ldflags '-s' github.com/kiranpachhai/hello_go
RUN cp /gopath/src/github.com/kiranpachhai/hello_go/Dockerfile /gopath
CMD docker build -t kiranpachhai/hello_go gopath
