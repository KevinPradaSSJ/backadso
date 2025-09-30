#!/usr/bin/env bash
set -euo pipefail

# Move into module directory that contains the Spring Boot app
cd "$(dirname "$0")/aprendiz"

# Build using Maven Wrapper (provided by the project)
./mvnw -DskipTests package

# Run the generated Spring Boot fat jar
exec java -jar target/*.jar


