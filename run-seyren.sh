#!/bin/bash
set -o errexit

if [ -z ${GRAPHITE_URL} ]
   then
       if [ $# -ne 1 ]
       then
           echo "Usage: run-seyren.sh GRAPHITE_URL"
       fi
       export GRAPHITE_URL=$1
fi

set +x
[ -e /etc/secrets/config ] && source /etc/secrets/config
set -x

export MONGO_URL=mongodb://$MONGODB_PORT_27017_TCP_ADDR:$MONGODB_PORT_27017_TCP_PORT/seyren

echo "Graphite URL $GRAPHITE_URL"
echo "Mongo URL $MONGO_URL"
echo "Catalina Opts $CATALINA_OPTS"

java -jar /opt/seyren-web.jar $CATALINA_OPTS
