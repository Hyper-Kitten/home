FROM ruby:3.1.2-alpine

RUN apk add --update git less build-base nodejs-current npm postgresql-dev chromium chromium-chromedriver gcompat vips-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN npm install -g yarn && bundle install && yarn install

COPY . .

LABEL maintainer="Josh Klina"

CMD RAILS_ENV=development puma -C config/puma.rb
