FROM java:openjdk-7-jre
MAINTAINER Bryan Pearson <bwp.pearson@gmail.com>

ENV SEYREN_VERSION  1.2.1

ADD https://github.com/scobal/seyren/releases/download/$SEYREN_VERSION/seyren-$SEYREN_VERSION.jar /opt/seyren.jar
ADD run-seyren.sh /usr/bin/run-seyren.sh
RUN chmod +x /usr/bin/run-seyren.sh

ENTRYPOINT ["/usr/bin/run-seyren.sh"]
EXPOSE 8080
