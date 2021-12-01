FROM c21xdx/theiago3

USER root

ENV GO_VERSION=1.17 \
    GOOS=linux \
    GOARCH=amd64

# Install Go
RUN curl -fsSL https://storage.googleapis.com/golang/go$GO_VERSION.$GOOS-$GOARCH.tar.gz | tar -C /home -xzv

EXPOSE 3000
ENTRYPOINT ["/etc/goconf/runide.sh"]
