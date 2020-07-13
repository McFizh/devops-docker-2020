FROM ruby:2.6.0
WORKDIR /service
RUN apt-get update ; apt-get install -y nodejs
RUN gem install bundler
COPY . /service
ENV SECRET_KEY_BASE=secretkey
ENV RAILS_ENV=production
RUN bundle install
RUN rails db:migrate 
RUN rake assets:precompile
EXPOSE 3000
ENTRYPOINT ["rails","s","-e","production"]
