#!/bin/bash

rm /usr/share/nginx/html/assets/.env
touch /usr/share/nginx/html/assets/.env
echo "ip='$(echo $BACKEND_IP)'" >> /usr/share/nginx/html/assets/.env
echo "port='$(echo $BACKEND_PORT)'" >> /usr/share/nginx/html/assets/.env
echo "secret='$(echo $BACKEND_SECRET)'" >> /usr/share/nginx/html/assets/.env
# /usr/sbin/nginx -g daemon off;
nginx -g 'daemon off;'