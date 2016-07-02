FROM java:openjdk-8-jre
MAINTAINER Bryan Pearson <bwp.pearson@gmail.com>

ENV SEYREN_VERSION  1.3.0

RUN wget http://github.com/scobal/seyren/releases/download/"$SEYREN_VERSION"/seyren-"$SEYREN_VERSION".jar -O /opt/seyren.jar
ADD run-seyren.sh /usr/bin/run-seyren.sh
RUN chmod +x /usr/bin/run-seyren.sh

ENTRYPOINT ["/usr/bin/run-seyren.sh"]
EXPOSE 8080
