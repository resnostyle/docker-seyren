FROM java:openjdk-7-jre
MAINTAINER Bryan Pearson <bwp.pearson@gmail.com>

ENV SEYREN_VERSION  1.2.1

#RUN wget https://github.com/scobal/seyren/releases/download/1.2.1/seyren-1.2.1.jar -O /seyren.jar
RUN wget http://github.com/scobal/seyren/releases/download/1.2.1/seyren-1.2.1.jar -O /opt/seyren.jar
ADD run-seyren.sh /usr/bin/run-seyren.sh
RUN chmod +x /usr/bin/run-seyren.sh

ENTRYPOINT ["/usr/bin/run-seyren.sh"]
EXPOSE 8080
