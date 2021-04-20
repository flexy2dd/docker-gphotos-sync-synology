FROM gilesknap/gphotos-sync:latest

COPY lauch.sh /

RUN chmod +x /lauch.sh

ENTRYPOINT ["/lauch.sh"]
