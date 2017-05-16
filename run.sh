#!/bin/sh

sed -i "s~##SERVER_NAME##~$SERVER_NAME~g" /etc/nginx/conf.d/default.conf
sed -i "s~##REDIRECT_URI##~$REDIRECT_URI~g" /etc/nginx/conf.d/default.conf
sed -i "s~##REDIRECT_STATUS_CODE##~$REDIRECT_STATUS_CODE~g" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
