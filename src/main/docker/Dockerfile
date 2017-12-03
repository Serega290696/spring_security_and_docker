FROM tomcat:9
MAINTAINER Beltser Sergey <beltser.sergey@gmail.com>


WORKDIR app/
VOLUME /tmp:tmp2
ADD target/app.jar app.jar
ADD target/app.jar /usr/local/tomcat/webapps/app.jar
RUN sh -c "touch /usr/local/tomcat/webapps/app.jar"

RUN export KEYKEY="value_value"
ENV ssecret="${KEYKEY}"
RUN echo "$ssecret"
EXPOSE 8090
ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /usr/local/tomcat/webapps/app.jar"]