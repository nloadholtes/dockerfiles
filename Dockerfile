FROM python:latest
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

RUN pip install krill

CMD ["krill"]
