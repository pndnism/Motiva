FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Motiva
WORKDIR /Motiva
ADD Gemfile /Motiva/Gemfile
ADD Gemfile.lock /Motiva/Gemfile.lock
RUN bundle install
ADD . /Motiva

