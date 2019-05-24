FROM ruby:2.5.5-stretch

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq
RUN apt-get install -y --assume-yes apt-utils
RUN apt-get install -y --no-install-recommends build-essential libpq-dev nodejs imagemagick  libmagickcore-dev libmagickwand-dev mysql-client

#Config red to full duplex
RUN apt-get install -y ethtool net-tools
RUN ethtool -s p1p1 speed 100 duplex full autoneg off

ENV APP /app/

RUN mkdir $APP
WORKDIR $APP

COPY Gemfile* $APP

RUN gem install bundler
RUN bundle install

COPY . $APP