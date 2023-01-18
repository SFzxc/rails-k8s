FROM ruby:3.1.2

RUN apt-get update && apt-get install -y --no-install-recommends nodejs

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

# Install gems
WORKDIR $INSTALL_PATH
COPY . .

RUN gem install rails bundler
RUN bundle install

EXPOSE 3000

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
