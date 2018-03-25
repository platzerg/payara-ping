FROM platzerworld/payara-micro
MAINTAINER Guenter Platzer

COPY ping.war ${DEPLOYMENT_DIR}
ENV ARCHIVE_NAME ping.war
HEALTHCHECK --interval=15s CMD curl --fail http://localhost:8181/ping/resources/pings/echo/+ || exit 1