container_name=$(/usr/bin/docker ps | grep router_ramoukha_3| awk 'NF{print $NF}')
if [ -z $container_name ];
then 
    echo ""
else
echo ${container_name} > lala
docker exec -it ${container_name} sh -c "ip link add br0 type bridge"

docker exec -it ${container_name} sh -c "ip link set dev br0 up"
docker exec -it ${container_name} sh -c "ip link add vxlan10 type vxlan id 10 dstport 4789"

docker exec -it ${container_name} sh -c "ip link set dev vxlan10 up"
docker exec -it ${container_name} sh -c "brctl addif br0 vxlan10"
docker exec -it ${container_name} sh -c "brctl addif br0 eth0"
cat routeur_inside_script3.sh | docker exec -i ${container_name} sh

fi