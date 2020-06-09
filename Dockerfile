FROM ruby:2.7

ENV PUPPET_VERSION=6.16.0
ENV LIBRARIAN_PUPPET_VERSION=3.0.0

RUN gem install puppet -v $PUPPET_VERSION && \
    gem install librarian-puppet -v $LIBRARIAN_PUPPET_VERSION

ENTRYPOINT ["/usr/local/bundle/bin/librarian-puppet"]
