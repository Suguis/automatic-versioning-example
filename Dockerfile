FROM alpine:latest

COPY echo_version.sh /usr/local/bin/echo_version.sh
COPY version.txt /usr/local/bin/version.txt

RUN chmod +x /usr/local/bin/echo_version.sh

ENTRYPOINT ["/usr/local/bin/echo_version.sh"]