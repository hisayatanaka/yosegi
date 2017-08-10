FROM ruby:latest

MAINTAINER hisayatanaka

RUN gem update --system
RUN gem install compass
RUN gem install sass

CMD bash -c "cd /product/public && /usr/local/bundle/bin/compass watch"
