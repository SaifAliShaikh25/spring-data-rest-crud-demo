# FROM openjdk:8-jdk-alpine
# VOLUME /tmp
# ARG JAR_FILE
# # ARG JAR_FILE=target/app.jar 
# COPY ${JAR_FILE} /app.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "/app.jar"]

FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]