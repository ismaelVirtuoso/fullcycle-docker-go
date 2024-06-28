FROM golang:1.22 AS builder

WORKDIR /app
COPY main.go .
RUN go build -ldflags '-s -w' main.go
ENTRYPOINT ["./main"]