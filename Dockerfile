FROM alpine:latest

RUN apk add --no-cache ruby ruby-dev build-base gcc libc-dev make
RUN gem install bundler jekyll

WORKDIR /site

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
