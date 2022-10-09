FROM ruby:3.1

RUN mkdir /pai-pad
WORKDIR /pai-pad
COPY Gemfile /pai-pad/Gemfile
COPY Gemfile.lock /pai-pad/Gemfile.lock

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . /pai-pad

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
