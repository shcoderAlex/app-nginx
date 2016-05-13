#!/bin/bash
nginx
consul-template -consul=$CONSUL_URL \
	-template="/templates/default.ctmpl:/etc/nginx/conf.d/default.conf:nginx -s reload"

