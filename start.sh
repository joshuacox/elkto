#!/bin/sh
cp /opt/logstash/template.d/logstash.tpl /opt/logstash/conf.d/logstash.conf
sed -i "s/REDIS_PORT_6379_TCP_ADDR/$REDIS_PORT_6379_TCP_ADDR/" /opt/logstash/conf.d/logstash.conf
sed -i "s/REDIS_PORT_6379_TCP_PORT/$REDIS_PORT_6379_TCP_PORT/" /opt/logstash/conf.d/logstash.conf

/bin/bash /app/bin/boot
