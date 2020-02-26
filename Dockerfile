FROM alpine:3.11.3

ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python3

RUN pip3 install --no-cache --upgrade pip setuptools wheel pymsteams

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
