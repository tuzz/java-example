FROM maven:3.6.3-openjdk-15
COPY . /app
WORKDIR /app
RUN mvn package
CMD java -jar target/app-0.1.0-jar-with-dependencies.jar
