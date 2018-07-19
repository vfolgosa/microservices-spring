FROM openjdk:latest

VOLUME /tmp
ADD app.jar /opt/app/
EXPOSE 8100
WORKDIR /opt/app/
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-Xms512m", "-Xmx1g", "-jar", "app.jar"]