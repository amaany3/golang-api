FROM golang:1.20.4 as builder

WORKDIR /go/src/app

COPY go.* ./
RUN go mod download -x

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -mod=readonly -v -o server ./cmd/main.go

FROM gcr.io/distroless/static-debian11:nonroot as runner

WORKDIR /

COPY --from=builder /go/src/app/server /server

ENTRYPOINT ["/server"]
