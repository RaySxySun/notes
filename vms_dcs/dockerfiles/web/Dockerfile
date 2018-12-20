FROM tomcat:7.0.90-jre8-alpine
ARG APP_NAME
COPY ./${APP_NAME} /${APP_NAME}
RUN ln -s /${APP_NAME} /usr/local/tomcat/webapps/${APP_NAME}

COPY --from=hengyunabc/arthas:latest /opt/arthas /arthas

EXPOSE 8080

CMD ["catalina.sh", "run"]
