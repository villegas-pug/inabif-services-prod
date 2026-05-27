FROM eclipse-temurin:21-jdk

ARG PORT_ARG

ENV PORT=${PORT_ARG}

WORKDIR /app

COPY ./build /app/

EXPOSE ${PORT}

CMD [ "java", "-jar", "acercandonos-1.1.jar" ]