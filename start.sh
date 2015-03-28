#!/bin/bash
cp /opt/logstash/templates.d/logstash.tpl /opt/logstash/conf.d/logstash.conf
sed -i "s/REDIS_PORT_6379_TCP_ADDR/$REDIS_PORT_6379_TCP_ADDR/" /opt/logstash/conf.d/logstash.conf
sed -i "s/REDIS_PORT_6379_TCP_PORT/$REDIS_PORT_6379_TCP_PORT/" /opt/logstash/conf.d/logstash.conf

/app/bin/boot
