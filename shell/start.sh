#!/bin/bash
su elsearch -c "bash /home/elsearch/elasticsearch/bin/elasticsearch -E http.host=0.0.0.0 -d"
curl -i -X PUT -H "Content-Type: application/json" -d "@/shell/nginx.error.json" "http://127.0.0.1:9200/_ingest/pipeline/nginx.error"
curl -i -X PUT -H "Content-Type: application/json" -d "@/shell/nginx.access.json" "http://127.0.0.1:9200/_ingest/pipeline/nginx.access"
# 启动nginx
nginx

/home/elsearch/kibana/bin/kibana --host 0.0.0.0 -Q

