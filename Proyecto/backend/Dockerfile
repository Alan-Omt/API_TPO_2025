# Fase de construcción (build)
FROM maven:3.9.10-eclipse-temurin-17 AS build  
# Imagen con Maven y JDK 17
WORKDIR /app  
# Directorio de trabajo
COPY pom.xml .  
# Copiar archivo de dependencias
RUN mvn dependency:go-offline  
# Descargar dependencias (cache)
COPY src ./src  
# Copiar código fuente
RUN mvn package -DskipTests  
# Compilar el proyecto (sin tests)

# Fase de ejecución
FROM openjdk:17-jdk-slim  
# Imagen ligera con JDK 17
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar  
# Copiar el .jar desde la fase de construcción
EXPOSE 8080  
# Puerto expuesto
ENTRYPOINT ["java", "-jar", "app.jar"]  
# Comando para ejecutar la app