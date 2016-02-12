#
#Shamelessly coppied from https://github.com/tommyoshaw/evernote
#
FROM thshaw/wine
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

COPY AmazonMusicInstaller.exe /usr/src/AmazonMusicInstaller.exe
COPY start.sh /start.sh

ENTRYPOINT ["bash", "/start.sh"]
