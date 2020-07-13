FROM openjdk:8
WORKDIR /service
COPY mvnw* pom* README* ./
COPY src src
COPY .mvn .mvn
RUN ./mvnw package
EXPOSE 8080
ENTRYPOINT ["java","-jar","./target/docker-example-1.1.3.jar"]
