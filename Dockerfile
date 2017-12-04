FROM tomcat:9
MAINTAINER Beltser Sergey <beltser.sergey@gmail.com>


# WORKDIR app/
# VOLUME /tmp:tmp2
# ADD app.jar app.jar

# VOLUME /tmp

COPY target/redis-java-app.jar /usr/local/tomcat/webapps/app.jar
RUN sh -c "touch /usr/local/tomcat/webapps/app.jar"

EXPOSE 80
CMD ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/app.jar"]
