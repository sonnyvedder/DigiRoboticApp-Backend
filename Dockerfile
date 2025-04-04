FROM golang:1.19

WORKDIR /app
COPY . .

RUN go mod init digiroboticapp
RUN go mod tidy

CMD ["go", "run", "main.go"]