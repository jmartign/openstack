#!/bin/bash
echo "**** Building base..."
cd base
sudo docker build -t nirmata/openstack-base .
cd ..
echo "*** Building mysql.."
cd mysql
sudo docker build -t nirmata/os-mysql .
cd ..
echo "*** Building rabbitmq.."
cd rabbitmq
sudo docker build -t nirmata/os-rabbitmq .
cd ..
echo "*** Building keystone..."
cd keystone
sudo docker build -t nirmata/os-keystone .
cd ..
echo "*** Building glance..."
cd glance
sudo docker build -t nirmata/os-glance .
cd ..
echo "*** Building nova..."
cd nova
sudo docker build -t nirmata/os-nova . 
cd ..
echo "*** Building horizon..."
cd horizon
sudo docker build -t nirmata/os-horizon . 
cd ..
echo "*** Build complete ***"
echo "**** Pushing images..."
sudo docker push nirmata/openstack-base
sudo docker push nirmata/os-mysql
sudo docker push nirmata/os-rabbitmq                     
sudo docker push nirmata/os-keystone
sudo docker push nirmata/os-glance
sudo docker push nirmata/os-nova
sudo docker push nirmata/os-horizon
echo "**** Pushing images completed ***"
