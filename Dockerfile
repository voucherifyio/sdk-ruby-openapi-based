FROM ruby:3.3

WORKDIR /app

COPY . .

WORKDIR /app/__tests__

RUN bundle install

CMD ["bundle", "exec", "rspec", "./spec"]

