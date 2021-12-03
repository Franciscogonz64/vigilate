FROM golang:1.16-alpine

# Create a working directory called app
WORKDIR /app

COPY . .

WORKDIR cmd/web

RUN go build -o vigilate

# Runs on localhost:4000
EXPOSE 4000

WORKDIR /app

CMD ["./run.sh"]
