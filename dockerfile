# Containerizing the go application that I have created
# This is the Dockerfile that I created to run the container 



FROM golang:1.22.5 as base


WORKDIR /app


COPY go.mod ./


RUN go mod download


COPY . .

# Build the application
RUN go build -o main .

# Reducing the image size using multi-stage builds
# using a distroless image to run the application
FROM gcr.io/distroless/base

# Copying  the binary from the previous stage
COPY --from=base /app/main .

# Copying the static files from the previous stage
COPY --from=base /app/static ./static

# Exposing the port on which the application will run
EXPOSE 8080

# Command to run the application
CMD ["./main"]