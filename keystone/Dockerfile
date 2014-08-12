FROM    registry.nirmata.com/nirmata/openstack-base:latest
MAINTAINER Ritesh Patel <ritesh@nirmata.com>

# Keystone packages
RUN apt-get install -y --force-yes keystone python-keystone
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

VOLUME  ["/var/log/keystone"]

# Add scripts
ADD run.sh /run.sh
ADD create_db.sh /create_db.sh
RUN chmod 755 ./*.sh

CMD ["/run.sh"]
