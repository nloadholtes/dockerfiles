# Usage:
# 	Building
# 		docker build -t wee-slack .
#	Running (no saved state)
# 		docker run -it \
#			-v /etc/localtime:/etc/localtime:ro \ # for your time
# 			wee-slack
# 	Running (saved state)
# 		docker run -it \
#			-v /etc/localtime:/etc/localtime:ro \ # for your time
# 			-v "${HOME}/.weechat:/home/user/.weechat" \
# 			wee-slack
#
FROM alpine:latest
LABEL maintainer "Nick Loadholtes <nick@ironboundsoftware.com>"

RUN apk add --no-cache \
	ca-certificates \
	tzdata \
	python \
	py2-pip \
	weechat \
	weechat-perl \
	weechat-python

RUN pip install websocket-client
RUN cp /usr/share/zoneinfo/America/New_York /etc/localtime
RUN echo "America/New_York" > /etc/timezone

ENV HOME /home/user

ADD https://raw.githubusercontent.com/wee-slack/wee-slack/master/wee_slack.py /home/user/.weechat/python/autoload/wee_slack.py

RUN adduser -S user -h $HOME \
	&& chown -R user $HOME

WORKDIR $HOME
USER user
ENV TERM=xterm-256color

ENTRYPOINT [ "weechat" ]
