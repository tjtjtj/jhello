FROM openjdk:8-jdk-alpine
RUN mkdir /app
COPY ./build/libs/gs-spring-boot-docker-0.1.0.jar /app
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app/gs-spring-boot-docker-0.1.0.jar" ]