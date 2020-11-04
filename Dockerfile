
# Base image
FROM ruby:2.6.5

RUN apt-get update -qq \
  && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    # reduce image size
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf \
    /var/lib/apt \
    /var/lib/dpkg \
    /var/lib/cache \
    /var/lib/log

# Create a directory for our application
# and set it as the working directory
RUN mkdir /APP_NAME
WORKDIR /APP_NAME

# Add our Gemfile
# and install gems

RUN gem install bundler -v 2.1.4
COPY Gemfile* /APP_NAME/
RUN bundle install

ADD . /APP_NAME/

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]






