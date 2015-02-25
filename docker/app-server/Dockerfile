FROM ruby:2.2.0
ADD . /consul
ADD ./sinatra-test /code
RUN cd /code && bundle install
RUN apt-get update
RUN apt-get -y install wget supervisor
RUN /consul/provision.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 80
COPY consul.d/ /consul/config
