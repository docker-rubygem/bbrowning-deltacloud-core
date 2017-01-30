FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.6.1-java

RUN gem install bbrowning-deltacloud-core --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deltacloudd"]
CMD ["--help"]
