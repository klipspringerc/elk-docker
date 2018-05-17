curl -XPOST 'localhost:9200/*/_delete_by_query' -H 'Content-Type: application/json' -d'
{
  "query": {
    "range": {
      "@timestamp": {
        "lt": "now-10d/d"
      }
    }
  }
}
'
