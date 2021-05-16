FROM debian:bullseye-slim

WORKDIR /app

RUN apt-get update && apt-get install -y wget \
  && wget https://github.com/dogecoin/dogecoin/releases/download/v1.14.3/dogecoin-1.14.3-x86_64-linux-gnu.tar.gz -O doge.tar.gz \
  && tar xf doge.tar.gz --strip-components 1 \
  && chmod +x bin/dogecoind

CMD ./bin/dogecoind