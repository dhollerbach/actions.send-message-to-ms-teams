FROM dhollerbach/ubuntu:msteams

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
