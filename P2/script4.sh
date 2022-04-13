#!/bin/sh
container_name=$(/usr/bin/docker ps | grep host_cel-oiri_2 | awk 'NF{print $NF}')
if [ -z $container_name ];
then
	echo ""
else
	echo ${container_name} > lala
	/usr/bin/docker exec  ${container_name} sh -c "ip addr add 30.1.1.2/24 dev eth0"
fi

