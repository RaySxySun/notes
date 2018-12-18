#--build-arg BASE_IMAGE_REPO=${BASE_IMAGE_REPO} --build-arg PROJ_HOME=${PROJ_HOME} --build-arg APP_NAME=${APP_NAME}
ARG BASE_IMAGE_REPO
FROM ${BASE_IMAGE_REPO}/openjdk:8-jdk
MAINTAINER ray ohraymaster@163.com
ARG PROJ_HOME
ARG AS_HOME
ARG APP_NAME
COPY ./${APP_NAME} ${PROJ_HOME}
#COPY ./overlay/arthas-packaging-bin.zip ${AS_HOME}/arthas-packaging-bin.zip
COPY ./overlay/hosts /tmp/hosts
COPY ./overlay/entrypoint.sh /entrypoint.sh

#RUN cd ${AS_HOME} && unzip arthas-packaging-bin.zip && rm -rf arthas-packaging-bin.zip
RUN cat /tmp/hosts >> /etc/hosts.tmp
RUN chmod o+x /entrypoint.sh
#ENTRYPOINT ["bash", "-c", "cat /tmp/hosts >> /etc/hosts && /opt/ecf/administration/core-service/org-mgmt-latest/bin/service_ctl.sh start"]

