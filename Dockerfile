FROM golang:latest AS builder
WORKDIR /app

RUN go mod init fullcycle/desafio1
RUN go mod download

COPY *.go ./

RUN go build -o /bin/desafio1

FROM scratch
WORKDIR /app
COPY --from=builder /bin/desafio1 .
CMD [ "./desafio1" ]