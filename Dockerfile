# SBT on Java 8
#
# URL: https://github.com/denis-it/docker-sbt
#
# @see http://www.scala-sbt.org/release/tutorial/Manual-Installation.html

FROM williamyeh/java8
MAINTAINER Denis T. <dev@denis-it.com>

ENV SBT_VERSION  0.13.13
ENV SBT_JAR      https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch.jar

ADD  $SBT_JAR  /usr/local/bin/sbt-launch.jar  
COPY sbt.sh    /usr/local/bin/sbt

RUN echo "==> fetch all sbt jars from Maven repo..."       && \
    echo "==> [CAUTION] this may take several minutes!!!"  && \
    sbt

VOLUME [ "/app" ]
WORKDIR /app

ENTRYPOINT ["sbt"]
CMD []
