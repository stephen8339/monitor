#!/bin/bash
sudo rm -rf /data/tags/android_zhongguo_server
sudo /bin/cp -rf /home/tags/android_zhongguo_server /data/tags
sudo /data/shell/android/rsync_json.sh
