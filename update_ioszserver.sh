#!/bin/bash
#sudo /data/shell/iosz/iosztag.sh
#source /data/shell/iosz/iosztagnew
#/bin/echo zh_ios_$tag
cd /home/tags/ios_appstore_server
git pull
git fetch --all
git checkout .
#git checkout zh_ios_$tag
git checkout bt_android_1.13
git pull
sudo rm -rf /data/tags/ios_appstore_server
sudo /bin/cp -rf /home/tags/ios_appstore_server /data/tags
cd /data/tags/ios_appstore_server
sudo /data/shell/iosz/createcfg.sh
#sudo /bin/cp -f conf/log4j/log4j.properties src/main/resources/log4j.properties
#sudo /bin/cp -f conf/log4j/octopus.xml src/main/resources/octopus.xml
sudo /home/monitor/maven/bin/mvn install:install-file -DgroupId=com.obsidian.zyzn -DartifactId=protocol -Dversion=1.0 -Dpackaging=jar -Dfile=/data/tags/ios_appstore_server/lib/com.obsidian.zyzn/protocol/1.0/protocol-1.0.jar
sudo /home/monitor/maven/bin/mvn -DskipTests=true clean install
sudo /bin/rm -rf target/conf
sudo /bin/cp -r conf target
sudo /bin/mv target/server-1.0-SNAPSHOT.jar target/server.jar
