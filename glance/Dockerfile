FROM nirmata/openstack-base:latest
MAINTAINER Ritesh Patel <ritesh@nirmata.com>

#install glance
RUN apt-get update
RUN apt-get install -y --force-yes glance python-glance python-glanceclient

#Setup supervisord
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

VOLUME  ["/var/log/glance"]

# Add scripts
ADD run.sh /run.sh
ADD create_db.sh /create_db.sh
RUN chmod 755 ./*.sh

CMD ["/run.sh"]
