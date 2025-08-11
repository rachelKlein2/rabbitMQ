FROM cimg/ruby:3.3.9-node

RUN gem install bunny

WORKDIR /app
COPY . /app

COPY Gemfile ./
# RUN bundle install

CMD ["ruby", "client.rb"]
