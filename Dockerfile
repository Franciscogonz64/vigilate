FROM golang:1.16-alpine

# Create a working directory called app
WORKDIR /app

# Copy all the go.mod & go.sum files
COPY go.mod .
COPY go.sum .

# Download all the mod files
RUN go mod download

# COPY all the source files into the current app directory
COPY . .

 COPY cmd/web/*.go ./
#  COPY ipe ./

# IPE needs to be running in the background as a requirement
WORKDIR /app/ipe
COPY ipe ./
# RUN ./ipe receiving error: "./ipe: line 1: syntax error: unterminated quoted string"
# Fails here


# RUN go build -o /cmd/web/*.go
RUN go build
# RUN cd ipe && ./ipe

# Runs on localhost:4000
EXPOSE 4000

CMD [ “./run.sh” ]