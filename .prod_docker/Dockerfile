FROM ruby:3.1.2-alpine

RUN apk add --update git less build-base nodejs-current npm postgresql-dev gcompat vips-dev

RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN npm install -g yarn && bundle install && yarn install
COPY . .

RUN rake assets:precompile

EXPOSE 3000
CMD puma -C config/puma.rb
