FROM ruby:2.2-wheezy
MAINTAINER Michael Barton, mail@michaelbarton.me.uk

ADD Gemfile /
RUN bundle install

ADD push-to-s3 /

ENTRYPOINT '/push-to-s3'
CMD [""]
