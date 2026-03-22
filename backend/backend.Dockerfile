FROM golang:1.22-alpine

WORKDIR /app

COPY backend/ .

RUN go mod init backend
RUN go get github.com/streadway/amqp
RUN go build -o app

CMD ["./app"]