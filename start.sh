service elasticsearch start && service logstash start && service kibana start
service cron start
tail -f /var/log/kibana/kibana5.log && wait
