#!/bin/bash

NGINX=/usr/local/nginx/sbin/nginx
PID=/usr/local/nginx/logs/nginx.pid
APP_NAME="nginx"

stop(){
    pid=`ps -ef|grep $APP_NAME|grep -v grep|awk '{print $2}'`
	if [ "$pid" ]; then
		kill -9 $pid
		echo "Pid:$pid 已经关闭!"
	else
    	echo "nginx未启动!"
	fi
}

#启动方法
start(){
    pid=`ps -ef|grep $APP_NAME|grep -v grep|awk '{print $2}'`
	if [ "$pid" ]; then
		echo "nginx已经启动!"
	else
		$NGINX
		echo "nginx启动成功!"
	fi
}

stop;
echo "执行服务器Https自动更新操作!"
start;


