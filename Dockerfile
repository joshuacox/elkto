FROM joshuacox/icingash
MAINTAINER Josh Cox <josh 'at' webhosting coop>

RUN apt-get update; apt-get install -y net-tools nsca
# xLINK_SERVICE redis elkto_datastore
# LINK_SERVICE es elastico
# MOUNT_FROM_HOST /exports/elkto/etc/logstash/conf.d /opt/logstash/conf.d
# MOUNT_FROM_HOST /exports/elkto/etc/logstash/template.d /etc/logstash/template.d
# PORTS_FROM_HOST 9292 9292
# PORTS_FROM_HOST 9997 9997
# PORTS_FROM_HOST 9997 9997/udp
# PORTS_FROM_HOST 9998 9998
# PORTS_FROM_HOST 9998 9998/udp
# PORTS_FROM_HOST 9999 9999
# PORTS_FROM_HOST 9999 9999/udp
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
ENTRYPOINT ["/start.sh"]
