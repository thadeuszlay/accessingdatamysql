FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG DEPENDENCY=target/dependency
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
#COPY ${DEPENDENCY}/BOOT-INF/classes /app
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.accessingdatamysql.AccessingDataMysqlApplication"]
ENTRYPOINT ["java","-jar","accessing-data-mysql-0.0.1-SNAPSHOT.jar"]

#FROM java:8
#VOLUME /tmp
#EXPOSE 8080
#ADD /build/libs/book-manager-1.0-SNAPSHOT.jar book-manager-1.0-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","book-manager-1.0-SNAPSHOT.jar"]