openstack
=========

Dockerfiles to create images for core OpenStack services

To build container images:
$ sudo ./build.sh 

This script also pushes the image to a docker repo. Change the repo name to push the images to your repo

To run openstack:
$ sudo ./run.sh <host-name> <host-ip>

This script will start the containers and inject all the necessary information. It will also create default tenants & users as well as run some basic tests. To change passwords etc, update the run.sh script
