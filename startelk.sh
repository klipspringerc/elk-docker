CONTID=$(docker run -p 5602:5601 -v /Users/cuisp/elk/log:/data/log -v /Users/cuisp/elk/datastore:/var/lib/elasticsearch --name elk -it -d )
docker exec -it CONTID /bin/sh /usr/local/bin/start.sh
