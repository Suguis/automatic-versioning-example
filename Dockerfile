FROM alpine:latest

COPY echo_version.sh /usr/local/bin/echo_version.sh
COPY VERSION.txt /usr/local/bin/VERSION.txt

RUN chmod +x /usr/local/bin/echo_version.sh

ENTRYPOINT ["/usr/local/bin/echo_version.sh"]