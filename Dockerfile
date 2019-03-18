FROM ruby:2.5.4-stretch

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq
RUN apt-get install -y --assume-yes apt-utils
RUN apt-get install -y --no-install-recommends build-essential libpq-dev nodejs imagemagick mysql-client

#Config red to full duplex
RUN apt-get install -y ethtool net-tools
RUN ethtool -s p1p1 speed 100 duplex full autoneg off

RUN mkdir /app

WORKDIR /app

RUN gem update --system

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

# RUN gem install bundler

RUN bundle install
