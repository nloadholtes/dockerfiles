#
#Shamelessly coppied from https://github.com/tommyoshaw/evernote
# (just with an updated version of evernote)
#
FROM thshaw/wine
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

COPY Evernote_5.9.6.9494.exe /usr/src/evernote.exe
COPY start.sh /start.sh

ENTRYPOINT ["bash", "/start.sh"]
