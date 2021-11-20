FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .


# COPY ipe/ ./
COPY cmd/web/*.go ./
# COPY ipe ./

# WORKDIR /app
# RUN cd ipe && ./ipe

# RUN go build -o /cmd/web/*.go
RUN go build
# RUN cd ipe && ./ipe

EXPOSE 4000

CMD [ “./run.sh” ]