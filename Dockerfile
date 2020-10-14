FROM maven:3.6.3-openjdk-15
COPY . /app
WORKDIR /app
RUN mvn package
CMD ["java", "-cp", "target/app-0.1.0.jar", "com.example.app.Main"]
