#!/bin/bash
cp /etc/logstash/templates.d/logstash.tpl /etc/logstash/conf.d/logstash.conf
sed -i "s/REDIS_PORT_6379_TCP_ADDR/$REDIS_PORT_6379_TCP_ADDR/" /etc/logstash/conf.d/logstash.conf
sed -i "s/REDIS_PORT_6379_TCP_PORT/$REDIS_PORT_6379_TCP_PORT/" /etc/logstash/conf.d/logstash.conf

/app/bin/boot
