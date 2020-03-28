#!/bin/sh

NGINX_LOGS="/var/log/nginx/access.log"

tail -1000000 ${NGINX_LOGS} | awk '{print $12}' | sort | uniq -c
