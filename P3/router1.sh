container_name=$(/usr/bin/docker ps | grep router_ramoukha_1| awk 'NF{print $NF}')
if [ -z $container_name ];
then 
    echo ""
else
echo ${container_name} > lala
cat routeur_inside_script1.sh | docker exec -i ${container_name} sh

fi
