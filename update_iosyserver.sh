#!/bin/bash
sudo /data/shell/iosy/iosytag.sh
source /data/shell/iosy/iosytagnew
/bin/echo cn_yueyu_$tag
cd /home/tags/ios_yueyu_server
git pull
git fetch --all
git checkout .
git checkout cn_yueyu_$tag
#git checkout cn_yueyu_1.8.1.15
git pull
sudo rm -rf /data/tags/ios_yueyu_server
sudo /bin/cp -rf /home/tags/ios_yueyu_server /data/tags
cd /data/tags/ios_yueyu_server
sudo /data/shell/iosy/createcfg.sh
#sudo /bin/cp -f conf/log4j/log4j.properties src/main/resources/log4j.properties
#sudo /bin/cp -f conf/log4j/octopus.xml src/main/resources/octopus.xml
sudo /home/monitor/maven/bin/mvn -DskipTests=true clean install
sudo /bin/rm -rf target/conf
sudo /bin/cp -r conf target
sudo /bin/mv target/server-1.0-SNAPSHOT.jar target/server.jar
