#
#Shamelessly coppied from https://github.com/tommyoshaw/evernote
#
#
# Run with:
# docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd:/dev/snd -e DISPLAY=unix$DISPLAY --name amz_music amz_music
#
FROM thshaw/wine
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

COPY AmazonMusicInstaller.exe /usr/src/AmazonMusicInstaller.exe
COPY start.sh /start.sh

ENTRYPOINT ["bash", "/start.sh"]
