FROM ruby:2.7-alpine

RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev \
  sqlite-dev \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile *.gemspec ./

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install

ADD . ./
