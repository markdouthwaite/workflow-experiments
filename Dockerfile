FROM alpine:3.10

COPY . ./bulgar
WORKDIR /bulgar
RUN ls
RUN chmod +x entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
