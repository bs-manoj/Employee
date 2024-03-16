# Start with a base image - in this case JDK 8 Alpine
FROM openjdk:17-oracle
# Run as a non-root user to mitigate security risks
# Run as a non-root user to mitigate security risks
# https://security.stackexchange.com/questions/106860/can-a-root-user-inside-a-docker-lxc-break-the-security-of-the-whole-system

# Specify JAR location
ARG JAR_FILE=target/*.jar
# Copy the JAR
COPY ${JAR_FILE} Employee-0.0.1-SNAPSHOT.jar
# Set ENTRYPOINT in exec form to run the container as an executable
ENTRYPOINT ["java","-jar","/Employee-0.0.1-SNAPSHOT.jar"]