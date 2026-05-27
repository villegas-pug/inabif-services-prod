FROM node:18-alpine

# Inyectados desde docker-compose, no disponibles en build y runtime
ARG PORT_ARG

# Disponibles en build y runtime
ENV PORT=${PORT_ARG}

WORKDIR /app

# Copiar el dist de Vue
COPY ./dist /app/dist

# Instalar serve globalmente
RUN npm install -g serve

# Exponer puerto
EXPOSE ${PORT}

# Servir la aplicación
CMD serve -s dist -l ${PORT}
