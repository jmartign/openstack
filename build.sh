#!/bin/bash
echo "**** Building base..."
cd base
sudo docker build -t registry.nirmata.com/nirmata/openstack-base .
cd ..
echo "*** Building mysql.."
cd mysql
sudo docker build -t registry.nirmata.com/nirmata/os-mysql .
cd ..
echo "*** Building rabbitmq.."
cd rabbitmq
sudo docker build -t registry.nirmata.com/nirmata/os-rabbitmq .
cd ..
echo "*** Building keystone..."
cd keystone
sudo docker build -t registry.nirmata.com/nirmata/os-keystone .
cd ..
echo "*** Building glance..."
cd glance
sudo docker build -t registry.nirmata.com/nirmata/os-glance .
cd ..
echo "*** Building nova..."
cd nova
sudo docker build -t registry.nirmata.com/nirmata/os-nova . 
cd ..
echo "*** Building horizon..."
cd horizon
sudo docker build -t registry.nirmata.com/nirmata/os-horizon . 
cd ..
echo "*** Build complete ***"
echo "**** Tagging images..."
sudo docker tag nirmata/openstack-base:latest registry.nirmata.com/nirmata/openstack-base:latest
sudo docker tag nirmata/os-mysql:latest registry.nirmata.com/nirmata/os-mysql:latest
sudo docker tag nirmata/os-rabbitmq:latest registry.nirmata.com/nirmata/os-rabbitmq:latest
sudo docker tag nirmata/os-keystone:latest registry.nirmata.com/nirmata/os-keystone:latest
sudo docker tag nirmata/os-glance:latest registry.nirmata.com/nirmata/os-glance:latest
sudo docker tag nirmata/os-nova:latest registry.nirmata.com/nirmata/os-nova:latest
sudo docker tag nirmata/os-horizon:latest registry.nirmata.com/nirmata/os-horizon:latest
echo "**** Pushing images..."
sudo docker push registry.nirmata.com/nirmata/openstack-base
sudo docker push registry.nirmata.com/nirmata/os-mysql
sudo docker push registry.nirmata.com/nirmata/os-rabbitmq 
sudo docker push registry.nirmata.com/nirmata/os-keystone
sudo docker push registry.nirmata.com/nirmata/os-glance
sudo docker push registry.nirmata.com/nirmata/os-nova
sudo docker push registry.nirmata.com/nirmata/os-horizon
echo "**** Pushing images completed ***"
