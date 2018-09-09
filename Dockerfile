FROM golang:1.11-alpine

RUN  mkdir -p /go/src/envdemo
COPY main.go /go/src/envdemo
RUN cd /go/src/envdemo && \
    CGO_ENABLED=0 go build -a -o envdemo
	
FROM scratch
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"
COPY --from=0 /go/src/envdemo/envdemo /envdemo
CMD ["/envdemo"]