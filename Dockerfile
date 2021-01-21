ARG RUBY_VERSION
FROM ruby:$RUBY_VERSION-slim

ARG NODE_MAJOR
ARG BUNDLER_VERSION

# Create app directory
RUN mkdir /app
WORKDIR /app

# Install app dependencies
COPY Gemfile Gemfile.lock package.json yarn.lock /app/
RUN apt-get update -qq && apt-get install -y --no-install-recommends gnupg2 curl \
  && curl https://deb.nodesource.com/setup_$NODE_MAJOR.x | bash \
  && curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends nodejs yarn build-essential libxml2-dev libpq-dev \
  && gem install bundler:${BUNDLER_VERSION} \
  && bundle config ignore_messages true \
  && bundle install -j "$(getconf _NPROCESSORS_ONLN)" --retry 5 \
  && yarn install \
  && apt-get --purge autoremove -y build-essential \
  && rm -r /var/lib/apt/lists/*

# Bundle app source
COPY . /app
