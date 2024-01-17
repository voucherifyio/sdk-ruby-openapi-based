FROM ruby:3.3

WORKDIR /app

COPY . .

RUN gem build VoucherifySdk.gemspec
RUN gem install VoucherifySdk-1.0.0.gem
RUN gem install dotenv

CMD ["ruby", "./__tests__/ruby.rb"]
