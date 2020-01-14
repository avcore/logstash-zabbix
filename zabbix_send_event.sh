#!/bin/bash

object='Zabbix_3.4'
message="$1"
message=$(echo $message | sed 's/\r/,/g')
/usr/bin/curl -s --header 'Content-Type: application/json' --request 'POST' --data "{\"Object\":\"${object}\",\"Message\":\"${message}\"}" "http://ip.ad.dr.r:8080"

