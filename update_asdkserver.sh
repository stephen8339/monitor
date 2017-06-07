#!/bin/bash
sudo /data/shell/android/asdktag.sh
source /data/shell/android/asdktagnew
echo v$tag
cd /data/tags/sdk
#git pull
#git fetch --all
git checkout .
git checkout v$tag
#git pull
#sudo rm -rf /data/tags/android_zhongguo_sdk
#sudo /bin/cp -rf /home/tags/android_zhongguo_sdk /data/tags/
sudo /data/shell/android/createcfg.sh
cd /data/tags/sdk
mvn -DskipTests=true clean install
