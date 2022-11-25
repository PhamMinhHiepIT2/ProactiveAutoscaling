#!/bin/bash

HOST=$1
PORT=$2

DATE=$(date '+%Y.%m.%d')
echo "Current DATE: $DATE"
INDEX="logstash-$DATE"
echo "Current INDEX: $INDEX"

LAST_1M_DATA=$(curl --location --request GET "http://$HOST:$PORT/$INDEX/_search" \
--header 'Content-Type: application/json' \
--data-raw '{
   "query":{
      "bool":{
         "must":{
            "regexp":{
               "api_prefix":{
                  "value":"api.*console"
               }
            }
         },
         "filter":{
            "range":{
               "time":{
                  "gte":"now-20m",
                  "lte":"now"
               }
            }
         }
      }
   },
   "size":0,
   "aggs":{
      "group_by_time":{
         "date_histogram":{
            "field":"time",
            "interval":"minute"
         }
      }
   }
}' | jq -r .aggregations.group_by_time.buckets[0])

echo "=======RESPONSE========"
echo $LAST_1M_DATA