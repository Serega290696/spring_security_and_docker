FROM tomcat:9
MAINTAINER Beltser Sergey <beltser.sergey@gmail.com>


#WORKDIR app/
# VOLUME /tmp:tmp2
# ADD app.war app.war

#VOLUME /tmp
COPY target/app.war /usr/local/tomcat/webapps/app.war
# COPY learning-1.0.war /usr/local/tomcat/webapps/app.war
RUN sh -c "touch /usr/local/tomcat/webapps/app.war"


# RUN export KEYKEY="value_value"
# ENV ssecret="${KEYKEY}"
# RUN echo "$ssecret"
# EXPOSE 8090
ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/app.war"]
