FROM    pblittle/docker-logstash
MAINTAINER Josh Cox <josh 'at' webhosting coop>

RUN apt-get update; apt-get install -y net-tools
# LINK_SERVICE redis elkto_datastore
# MOUNT_FROM_HOST /exports/elkto/etc/logstash/conf.d /opt/logstash/conf.d
# PORTS_FROM_HOST 9292 9292
# PORTS_FROM_HOST 9200 9200
# PORTS_FROM_HOST 9200 9200/udp
# PORTS_FROM_HOST 9300 9300
# PORTS_FROM_HOST 9300 9300/udp
# PORTS_FROM_HOST 9997 9997
# PORTS_FROM_HOST 9997 9997/udp
# PORTS_FROM_HOST 9998 9998
# PORTS_FROM_HOST 9998 9998/udp
# PORTS_FROM_HOST 9999 9999
# PORTS_FROM_HOST 9999 9999/udp
