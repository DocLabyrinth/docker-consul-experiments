FROM dockerfile/nginx
ADD . /consul
RUN apt-get update
RUN apt-get -y install wget supervisor
RUN /consul/provision.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

