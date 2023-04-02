FROM golang:latest

# Install any necessary dependencies here

WORKDIR /app

# Copy the Go modules and download dependencies
COPY go.mod ./

RUN go mod download

# Copy the rest of the application files
COPY . .

# Build the application
RUN go build -x -o main .

# Set the command to run the executable
CMD ["./main"]
