FROM ruby:2.7.1

RUN apt-get update && \
    apt-get install -y default-mysql-client nodejs vim --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /Motiva

WORKDIR /Motiva

ADD Gemfile /Motiva/Gemfile
ADD Gemfile.lock /Motiva/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /Motiva