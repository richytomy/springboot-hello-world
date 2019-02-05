# Start with a base image containing Java runtime
FROM openjdk:8

# Add Maintainer Info
LABEL maintainer="xxx@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 80 available to the world outside this container
EXPOSE 80

# The application's jar file
ARG JAR_FILE=target/hello-world-0.0.1-SNAPSHOT.jarhello-world

# Add the application's jar to the container
ADD ${JAR_FILE} target/hello-world.jar

RUN bash -c 'touch target/hello-world.jar'

# Run the jar file 
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=local","target/hello-world.jar"]
