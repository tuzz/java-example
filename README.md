## Java Example Project

This repository contains an example Java project. It uses Maven for dependency
management and JUnit for testing. It can run inside a Docker container or as
a standalone jar file with all dependencies bundled.

**Running with Docker:**

```sh
$ brew cask install docker # ... then start the Docker app on your Mac.
$ brew install docker
$ docker build -t java-example .
$ docker run -v "$(pwd)":/app -t java-example mvn package
$ docker run -v "$(pwd)":/app -t java-example
```

If you add new dependencies, you may want to rebuild:

```sh
$ docker rmi -f java-example
$ docker build -t java-example .
```

**Running locally:**

```sh
$ brew install maven # ... then follow the instructions to symlink, set path, etc.
$ mvn package
$ java -jar target/app-0.1.0-jar-with-dependencies.jar
```

The Docker build also produces the jar file. It is slightly faster to run the
jar directly rather than through Docker.
