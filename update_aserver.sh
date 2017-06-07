#!/bin/sh
#sudo /data/shell/android/atag.sh
#source /data/shell/android/atagnew
#echo jp_android_$tag
cd /data/tags/server
cp /home/ec2-user/target_stage.tar.gz ./
tar zxvf target_stage.tar.gz
rm -rf target_stage.tar.gz
#git pull
#git fetch --all
#git checkout .
#git checkout jp_android_$tag
#git checkout bt_android_1.13
#git pull
#sudo /bin/cp -rf /data/tags/server /data/tags
cd /data/tags/server
#sudo /data/shell/android/createcfg.sh
#sudo /bin/cp -f conf/log4j/log4j.properties src/main/resources/log4j.properties
#sudo /bin/cp -f conf/log4j/octopus.xml src/main/resources/octopus.xml
#mvn install:install-file -DgroupId=com.obsidian.zyzn -DartifactId=protocol -Dversion=1.0 -Dpackaging=jar -Dfile=/data/tags/server/lib/com.obsidian.zyzn/protocol/1.0/protocol-1.0.jar
#mvn -DskipTests=true clean install
rm -rf conf/logic/version.json
cp target/conf/logic/version.json conf/logic/
sudo /data/shell/android/createcfg.sh
sudo /bin/mv target/server-1.0-SNAPSHOT.jar target/server.jar
