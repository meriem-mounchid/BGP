container_name=$(/usr/bin/docker ps | grep host_ramoukha_1 | awk 'NF{print $NF}')
if [ -z $container_name ];
then
	echo ""
else
	echo ${container_name} > lala
	/usr/bin/docker exec  ${container_name} sh -c "ip addr add 20.1.1.1/24 dev eth1"
fi
