#!/bin/bash
sudo rm -rf /data/tags/ios_yueyu_server
sudo /bin/cp -rf /home/tags/ios_yueyu_server /data/tags
sudo /data/shell/iosy/rsync_json.sh
