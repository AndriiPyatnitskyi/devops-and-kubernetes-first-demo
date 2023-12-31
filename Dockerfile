FROM golang as bulder

WORKDIR /src
COPY src .
RUN CGO_ENABLED=0 go build -o app

FROM scratch
ADD ./html /html
COPY --from=bulder /src/app .
ENTRYPOINT ["/app"]
EXPOSE 8080
