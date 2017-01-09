#!/bin/bash

if [[ "$1" == 'start' ]];then
	echo 'start uwsgi'
	uwsgi -x uwsgi.xml  --pidfile=/tmp/webhook_uwsgi.pid > logs/uwsgi_webhook.log 2> logs/uwsgi_webhook.log
elif [[ "$1" == 'reload' ]];then
	echo 'reload uwsgi'
	uwsgi --reload /tmp/webhook_uwsgi.pid
elif [[ "$1" == 'stop' ]];then
	echo 'stop uwsgi'
	uwsgi --stop /tmp/webhook_uwsgi.pid
else
	echo "need a args"
fi
