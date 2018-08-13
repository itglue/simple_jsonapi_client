FROM ruby:2.4.0
RUN apt-get update -qq
RUN gem update bundler
RUN mkdir /simple_jsonapi_client
WORKDIR /simple_jsonapi_client
ADD . .
RUN bundle install
