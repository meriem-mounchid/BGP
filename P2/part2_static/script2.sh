#!/bin/sh
container_name=$(/usr/bin/docker ps | grep routeur_cel-oiri_2 | awk 'NF{print $NF}')
if [ -z $container_name ];
then
	echo ""
else
	echo ${container_name} > lala
	/usr/bin/docker exec  ${container_name} sh -c "ip link add br0 type bridge"
	/usr/bin/docker exec  ${container_name} sh -c "ip link set dev br0 up"
	/usr/bin/docker exec  ${container_name} sh -c "ip addr add 10.1.1.2/24 dev eth0"
	/usr/bin/docker exec  ${container_name} sh -c "ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.1 local 10.1.1.2 dstport 4789"
	/usr/bin/docker exec  ${container_name} sh -c "ip addr add 20.1.1.2/24 dev vxlan10"
	/usr/bin/docker exec  ${container_name} sh -c "brctl addif br0 eth1"
	/usr/bin/docker exec  ${container_name} sh -c "brctl addif br0 vxlan10"
	/usr/bin/docker exec  ${container_name} sh -c "ip link set dev vxlan10 up"
fi

