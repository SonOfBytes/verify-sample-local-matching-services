FROM maven:3-jdk-8-alpine

ENV APPPATH /app

ENV PATH $APPPATH:$PATH

RUN mkdir -p $APPPATH
COPY pom.xml  $APPPATH
WORKDIR $APPPATH
RUN mvn dependency:go-offline

COPY . $APPPATH

RUN chmod 755 tests_runner.sh

CMD [ "tests_runner.sh" ]