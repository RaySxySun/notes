#--build-arg BASE_IMAGE_REPO=${BASE_IMAGE_REPO} --build-arg PROJ_HOME=${PROJ_HOME} --build-arg APP_NAME=${APP_NAME}
ARG BASE_IMAGE_REPO
FROM ${BASE_IMAGE_REPO}/openjdk:8-jdk
MAINTAINER ray ohraymaster@163.com

ARG PROJ_HOME
ARG AS_HOME
ARG APP_NAME

COPY ./${APP_NAME} ${PROJ_HOME}
COPY --from=hengyunabc/arthas:latest /opt/arthas /arthas
#COPY ./as /as
COPY ./overlay/entrypoint.sh /entrypoint.sh

RUN chmod o+x /entrypoint.sh

