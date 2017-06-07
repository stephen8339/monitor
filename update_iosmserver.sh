#!/bin/bash
sudo /data/shell/myxy/iosmtag.sh
source /data/shell/myxy/iosmtagnew
/bin/echo cn_fl_appstore_$tag
cd /home/tags/ios_myxy_server
git pull
git fetch --all
git checkout .
git checkout cn_fl_appstore_$tag
git pull
sudo rm -rf /data/tags/ios_myxy_server
sudo /bin/cp -rf /home/tags/ios_myxy_server /data/tags
cd /data/tags/ios_myxy_server
sudo /data/shell/myxy/createcfg.sh
#sudo /bin/cp -f conf/log4j/log4j.properties src/main/resources/log4j.properties
#sudo /bin/cp -f conf/log4j/octopus.xml src/main/resources/octopus.xml
sudo /home/monitor/maven/bin/mvn -DskipTests=true clean install
sudo /bin/rm -rf target/conf
sudo /bin/cp -r conf target
sudo /bin/mv target/server-1.0-SNAPSHOT.jar target/server.jar
