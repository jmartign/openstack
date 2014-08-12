FROM nirmata/openstack-base:latest
MAINTAINER Ritesh Patel <ritesh@nirmata.com>

#install horizon
RUN apt-get update
RUN apt-get install -y --force-yes apache2 memcached libapache2-mod-wsgi openstack-dashboard
RUN apt-get remove -y --force-yes --purge openstack-dashboard-ubuntu-theme

#Setup supervisord
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

VOLUME  ["/var/log/horizon"]

# Add scripts
ADD run.sh /run.sh
RUN chmod 755 ./*.sh

CMD ["/run.sh"]
