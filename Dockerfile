FROM openjdk:17-jdk-alpine
WORKDIR /app
ADD ./target/SEU-JAR.jar /app
ADD ./newrelic/newrelic.jar  /app
ADD ./newrelic/newrelic.yml  /app 
ENV NEW_RELIC_APP_NAME="NOME DA SUA API"
ENV NEW_RELIC_LICENSE_KEY="SUA CHAVE DO NEW RELIC"
ENTRYPOINT ["java","-javaagent:/app/newrelic.jar","-jar","/app/SEU-JAR.jar"]
