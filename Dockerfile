FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh
COPY test.txt /test.txt
RUN ls
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
