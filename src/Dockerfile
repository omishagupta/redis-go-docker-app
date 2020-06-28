FROM golang:alpine

# Add Makefile utility
RUN apk add --update make

# Set the current working directory inside the container
WORKDIR /app

# Copy everything from this folder to workdir
COPY . .

# Build the package
RUN make build

# executes the demo.bin created by Makefile
CMD make run