This demo uses Spring Boot. You can find additional Spring Boot documentation [here](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/)
# Build
To build the jar:

```
./mvnw clean package
```

This will create a jar file in `target/hello-world-0.0.1-SNAPSHOT.jar`

# Run
To run the application:
```
java -jar <path-to-deployed-jar>/hello-world-0.0.1-SNAPSHOT.jar
```
The application will start in the foreground. By default it starts accepting requests port 8080.