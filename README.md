## Java Example Project

This repository contains an example Java project. It uses Maven for dependency
management and JUnit for testing. It runs inside a docker container.

To build the container and download dependencies:

```sh
$ docker build -t java-example .
```

To compile the application and run the tests:

```sh
$ docker run -v "$(pwd)":/app -t java-example mvn package
```

To run the application:

```sh
$ docker run -v "$(pwd)":/app -t java-example
# Hello, world!
```

To rebuild the container, e.g. if you add dependencies:

```sh
$ docker rmi -f java-example
$ docker build -t java-example .
```
