# Use an official OpenJDK image as the base image
FROM openjdk:17-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file from the Jenkins workspace into the container
COPY target/myartifactid-0.0-SNAPSHOT.jar app.jar

# Expose the port your application runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
