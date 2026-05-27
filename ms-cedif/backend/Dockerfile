FROM eclipse-temurin:21-jdk

ARG PORT_ARG

WORKDIR /app

COPY ./build /app/

ENV PORT=${PORT_ARG}

EXPOSE ${PORT}

CMD [ "java", "-jar", "cedif-1.1.jar" ]