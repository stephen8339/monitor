#!/bin/bash
sudo /data/shell/iosy/iosysdktag.sh
source /data/shell/iosy/iosysdktagnew
echo v$tag
cd /home/tags/ios_yueyu_sdk
git pull
git fetch --all
git checkout .
git checkout v$tag
git pull
sudo rm -rf /data/tags/ios_yueyu_sdk
sudo /bin/cp -rf /home/tags/ios_yueyu_sdk /data/tags/
sudo /data/shell/iosy/createcfg.sh
cd /data/tags/ios_yueyu_sdk
sudo /home/monitor/maven/bin/mvn -DskipTests=true clean install
