FROM ruby:2.3.1

ENV APPPATH /app

ENV PATH $APPPATH/bin:$PATH

RUN mkdir -p $APPPATH
COPY . $APPPATH
WORKDIR $APPPATH

RUN bundle check || bundle install

CMD [ "bundle", "exec", "./lms.rb" ]