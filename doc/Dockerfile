###########################################################################
#			dockerfile notes
###########################################################################


# ARGs: please note if put ARGs in diff layers, the COPY command won't see them

  ```
  ARG BASE_IMAGE_REPO
  #ARG PROJ_HOME	#Wrong
  #ARG AS_HOME	#Wrong FROM ${BASE_IMAGE_REPO}/openjdk:8-jdk
  MAINTAINER ray ohraymaster@163.com
  ARG PROJ_HOME
  ARG AS_HOME
  COPY ./org-mgmt ${PROJ_HOME}
  COPY ./overlay/arthas-packaging-bin.zip ${AS_HOME}/arthas-packaging-bin.zip
  COPY ./overlay/hosts /tmp/hosts
  ```
