FROM google/golang
ENV http_proxy http://proxy-lmi.global.lmco.com:80
ENV https_proxy http://proxy-lmi.global.lmco.com:80
RUN git config --global http.sslVerify false
RUN CGO_ENABLED=0 go get -insecure -a -ldflags '-s' github.com/kiranpachhai/hello_go
RUN cp /go/src/github.com/kiranpachhai/hello_go/Dockerfile /app
CMD docker build -t kiranpachhai/hello_go app
