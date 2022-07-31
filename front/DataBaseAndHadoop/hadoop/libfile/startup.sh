#!/bin/bash
set -eo pipefail
/etc/init.d/ssh start
if [ -d "/opt/apps/hadoop-2.6.0-cdh5.9.3/data/temp/dfs" ]; then
  ./hadoop-2.6.0-cdh5.9.3/sbin/start-all.sh
else
  ./hadoop-2.6.0-cdh5.9.3/bin/hdfs namenode -format && \
  ./hadoop-2.6.0-cdh5.9.3/sbin/start-all.sh
fi
mv /data/startup.sh /data/startup.sh_bak
mv /data/startup.sh.bak /data/startup.sh
echo "hue log:" && \
./hue-3.9.0-cdh5.9.3/build/env/bin/hue runserver 0.0.0.0:8888
