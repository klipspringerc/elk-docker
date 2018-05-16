service elasticsearch start && service logstash start && service kibana start
tail -f /var/log/kibana/kibana5.log && wait
