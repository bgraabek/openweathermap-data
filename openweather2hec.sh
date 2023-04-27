#!/bin/sh

owapi=x
location=x
lat=x
lon=x

logscaleurl=x
ingesttoken=x

# Getting data by city name
#curl "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$owapi&units=metric" | \
#curl $logscaleurl/api/v1/ingest/hec/raw -X POST -H "Content-Type: text/json; charset=utf-8" -H "Authorization: Bearer $ingesttoken" -d @-

# Getting data by lat/lon
curl "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$owapi&units=metric" | \
curl $logscaleurl/api/v1/ingest/hec/raw -X POST -H "Content-Type: text/json; charset=utf-8" -H "Authorization: Bearer $ingesttoken" -d @-
