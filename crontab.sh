#!/bin/bash

NGINX=/usr/local/nginx/sbin/nginx
PID=/usr/local/nginx/logs/nginx.pid

stop(){
	if [ "$PID" ]; then
		kill -9 $PID
		echo "Pid:$PID 已经关闭!"
	else
    	echo "nginx未启动!"
	fi
}

#启动方法
start(){
	if [ -f $PID ] 
	then
		echo "nginx已经启动!"
	else
		$NGINX
		echo "nginx启动成功!"
	fi
}

stop();
echo "执行服务器Https自动更新操作!"
start();


