FROM eclipse-temurin:17-jdk

ARG PORT_ARG

WORKDIR /app

COPY ./build /app/

ENV PORT=${PORT_ARG}

EXPOSE ${PORT}

CMD [ "java", "-jar", "sigeir-1.0.0.jar" ]
