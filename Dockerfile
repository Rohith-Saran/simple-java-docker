# Use an official OpenJDK runtime as a parent image
# A base image is pulled which gives all tools and libraries needed to run Java applications
# Base Image: This tells Docker: "Start with this pre-existing image, and then layer my changes on top of it."
FROM openjdk:17-jdk-alpine
 # Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . .

RUN javac Main.java

CMD ["java", "Main"]