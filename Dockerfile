# Use a base image with Java
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file (update the .jar name if needed)
COPY target/*.jar app.jar

# Expose port (Render sets $PORT automatically)
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
