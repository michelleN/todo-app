FROM ruby:2.5.0

MAINTAINER Michelle Noorali <michellemolu@gmail.com>

RUN apt-get update && apt-get install -qq -y build-essential nodejs

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile $INSTALL_PATH/Gemfile
COPY Gemfile.lock $INSTALL_PATH/Gemfile.lock
RUN gem install rake --version=12.3.0 && gem install bundler && bundle install

COPY . $INSTALL_PATH

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-e", "development"]
