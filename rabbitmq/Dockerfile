FROM nirmata/openstack-base:latest
MAINTAINER Ritesh Patel <ritesh@nirmata.com>

# Install rabbitmq
RUN apt-get install -y --force-yes rabbitmq-server
RUN rabbitmq-plugins enable rabbitmq_management

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add scripts
ADD run.sh /run.sh
RUN chmod 755 ./*.sh

CMD ["/run.sh"]
