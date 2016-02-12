#!/bin/bash

echo "Starting Amazon Music"
echo "Wine version"
wine --version

WINEDLLOVERRIDES="mshtml,mscoree=" wineboot -u
AMZ_DIR="/root/.wine/drive_c/users/root/Local Settings/Application Data/Amazon Music"
if [ -d "$AMZ_DIR" ]; then
    echo "Already installed, running"
    wine "$AMZ_DIR/Amazon Music.exe"
else
    echo "First time, installing"
    wine /usr/src/AmazonMusicInstaller.exe 
fi

#sleep 30
#wine /root/.wine/drive_c/Program\ Files\ \(x86\)/Evernote/Evernote/Evernote.exe &

while(true)
do
    echo "Amazon Music is running"
    sleep 600
done
