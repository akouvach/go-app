FROM golang:latest AS build
WORKDIR /app
COPY . .
RUN go build -o app .

FROM alpine AS bin
COPY --from=build /app/app /