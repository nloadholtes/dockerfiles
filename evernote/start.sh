#!/bin/bash

echo "Starting Evernote"
echo "Wine version"
wine --version

WINEDLLOVERRIDES="mshtml,mscoree=" wineboot -u
wine /usr/src/evernote.exe 

sleep 30
wine /root/.wine/drive_c/Program\ Files\ \(x86\)/Evernote/Evernote/Evernote.exe &

while(true)
do
    echo "Evernote is running"
    sleep 600
done
