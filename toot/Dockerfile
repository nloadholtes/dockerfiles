# Usage:
# 	Building
# 		docker build -t toot .
#	Running (no saved state)
# 		docker run -it \
#			-v /etc/localtime:/etc/localtime:ro \ # for your time
#	 		toot	
# 	Running (saved state)
# 		docker run -it \
#			-v /etc/localtime:/etc/localtime:ro \ # for your time
# 			-v "${HOME}/.config/toot:/home/user/.config/toot" \
# 			toot	
#
FROM python:3-alpine
LABEL maintainer "Nick Loadholtes <nick@ironboundsoftware.com>"

RUN apk add --no-cache \
	ca-certificates \
	tzdata 

# RUN pip install websocket-client
RUN cp /usr/share/zoneinfo/America/New_York /etc/localtime
RUN echo "America/New_York" > /etc/timezone

RUN pip install toot

ENV HOME /home/user

RUN adduser -S user -h $HOME \
	&& chown -R user $HOME

WORKDIR $HOME
USER user
ENV TERM=xterm-256color

ENTRYPOINT [ "toot" ]
