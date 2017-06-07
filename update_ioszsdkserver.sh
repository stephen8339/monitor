#!/bin/bash
sudo /data/shell/iosz/ioszsdktag.sh
source /data/shell/iosz/ioszsdktagnew
/bin/echo v$tag
cd /home/tags/ios_appstore_sdk
git pull
git fetch --all
git checkout .
git checkout v$tag
git pull
sudo rm -rf /data/tags/ios_appstore_sdk
sudo /bin/cp -rf /home/tags/ios_appstore_sdk /data/tags/
sudo /data/shell/iosz/createcfg.sh
cd /data/tags/ios_appstore_sdk
sudo /home/monitor/maven/bin/mvn -DskipTests=true clean install
