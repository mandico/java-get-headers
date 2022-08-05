FROM openjdk:11
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/java-get-headers-0.0.1-SNAPSHOT.jar javagetheaders.jar
EXPOSE 80
#ENTRYPOINT exec java $JAVA_OPTS -jar javagetheaders.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar javagetheaders.jar