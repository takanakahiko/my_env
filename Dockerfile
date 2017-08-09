FROM ubuntu:latest
LABEL maintainer "takanakahiko <takanakahiko@gmail.com>"

CMD /bin/bash

RUN set -vx \
 && apt-get update \
 && apt-get install -y git vim python

