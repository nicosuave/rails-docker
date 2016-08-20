FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y libxml2-dev libxslt1-dev libqt4-webkit libqt4-dev xvfb

RUN gem install bundler

WORKDIR /var/app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 3000

CMD bundle exec rails server --binding 0.0.0.0
