FROM google/golang
ENV http_proxy http://proxy-lmi.global.lmco.com:80
ENV https_proxy http://proxy-lmi.global.lmco.com:80
RUN git config --global http.sslVerify false && \
    CGO_ENABLED=0 go get -insecure -a -ldflags '-s' github.com/kiranpachhai/hello_go && \
    cp /go/src/github.com/kiranpachhai/hello_go/Dockerfile /go && \
    curl -L -k https://get.docker.com/builds/Linux/x86_64/docker-1.10.3 > /usr/bin/docker && \
    chmod +x /usr/bin/docker

CMD /usr/bin/docker build -t kiranpachhai/hello_go /go
