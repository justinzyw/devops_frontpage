#!/bin/bash

# Fetch the variables
. parm.txt

# function to get the current time formatted
currentTime()
{
  date +"%Y-%m-%d %H:%M:%S";
}

sudo docker service scale devops-frontpage=0


#echo ---$(currentTime)---populate the volumes---
#to zip, use: sudo tar zcvf devops_portainer_volume.tar.gz /var/nfs/volumes/devops_frontpage*
#sudo tar zxvf devops_frontpage_volume.tar.gz -C /


echo ---$(currentTime)---create frontpage service---
sudo docker service create -d \
--publish $FRONTPAGE_PORT:80 \
--name devops-frontpage \
--network $NETWORK_NAME \
--replicas 1 \
$FRONTPAGE_IMAGE


sudo docker service scale devops-frontpage=1
