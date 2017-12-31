FROM ruby:2.3-alpine
EXPOSE 4567

VOLUME /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN apk add --update nodejs g++ make
RUN bundle install

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
