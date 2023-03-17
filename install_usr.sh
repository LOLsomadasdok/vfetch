#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "Not running as root"
    exit
fi
chmod +x ./vfetch
mv ./vfetch /bin/
where=""
mkdir /var/.vfetch
mv ./vfetch-config /var/.vfetch/
