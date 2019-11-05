# select image
FROM maven:3.6.2-jdk-8-slim as builder

# Args
ARG MAVEN_REPO_USER
ARG MAVEN_REPO_PASS
ARG MAVEN_REPO_URL

WORKDIR /frontend

# cache as many files as possible
COPY pom.xml .
COPY .m2 .

RUN mvn -B -f pom.xml -s settings.xml -Denv.MAVEN_REPO_USER=$MAVEN_REPO_USER -Denv.MAVEN_REPO_PASS=$MAVEN_REPO_PASS -Denv.MAVEN_REPO_URL=$MAVEN_REPO_URL dependency:go-offline

# copy other files
COPY ./src ./src

# build for release
RUN mvn package

# tomcat
FROM tomcat:8.5.47-jdk8-openjdk

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY --from=builder /frontend/target/frontend.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]