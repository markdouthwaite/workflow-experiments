FROM alpine:3.10

RUN ls
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
