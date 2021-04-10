ARG RUBY_VER=2.5.3

FROM node:12.22.1-buster-slim as node

FROM ruby:${RUBY_VER} as base

ARG RUBY_VER=2.5.3

COPY --from=node /usr/local/bin/ /usr/local/bin/
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=node /opt /opt

FROM base as buildpack

WORKDIR /myapp

COPY conf_${RUBY_VER}/Gemfile /myapp
COPY conf_${RUBY_VER}/Gemfile.lock /myapp

RUN gem install bundler --version 1.16.1 && bundle install

RUN gem install nokogiri:1.11.2 loofah:2.9.0

FROM base

WORKDIR /myapp

RUN apt update -qq && apt install -y tzdata locales default-mysql-server default-mysql-client less vim \
    && rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

ENV LANG ja_JP.uft8
ENV DISABLE_SPRING 1

COPY --from=buildpack /usr/local/bundle /usr/local/bundle

COPY conf_${RUBY_VER}/entrypoint.sh /tmp
RUN chmod +x /tmp/entrypoint.sh

ENTRYPOINT ["/tmp/entrypoint.sh"]
