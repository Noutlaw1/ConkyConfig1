#!/bin/bash

location=$(curl -s https://ipvigilante.com/$(curl -s https://ipinfo.io/ip))

city=$(echo $location | jq  '.data.city_name')
country=$(echo $location | jq '.data.country_name')

echo $(echo "$city, $country" | sed 's/["]//g')

