#!/bin/bash
sudo /data/shell/myxy/iosmsdktag.sh
source /data/shell/myxy/iosmsdktagnew
/bin/echo v$tag
cd /home/tags/ios_myxy_sdk
git pull
git fetch --all
git checkout .
git checkout v$tag
git pull
sudo rm -rf /data/tags/ios_myxy_sdk
sudo /bin/cp -rf /home/tags/ios_myxy_sdk /data/tags/
sudo /data/shell/myxy/createcfg.sh
cd /data/tags/ios_myxy_sdk
sudo /home/monitor/maven/bin/mvn -DskipTests=true clean install
