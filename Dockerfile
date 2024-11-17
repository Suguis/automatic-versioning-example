FROM alpine:latest

WORKDIR /app

COPY echo_version.sh VERSION.txt ./

RUN chmod +x echo_version.sh

CMD ["/app/echo_version.sh"]