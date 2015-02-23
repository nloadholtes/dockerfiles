FROM python:2.7.9-wheezy
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    libfreetype6 \
    libfreetype6-dev \
    zlib1g-dev \
    --no-install-recommends

RUN pip install rainbowstream

ENTRYPOINT [ "rainbowstream" ]
