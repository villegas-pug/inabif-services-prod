FROM nginx:alpine

# Inyectados desde docker-compose, no disponibles en build y runtime
ARG PORT_ARG

# Disponibles en build y runtime
ENV PORT=${PORT_ARG}

# Copiar nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia los certificados autofirmados
COPY certs/inabif.gob.pe.crt /etc/nginx/certs/sigeif-app.crt
COPY certs/inabif.gob.pe-key.pem /etc/nginx/certs/sigeif-app.key

# Copiar dist
COPY dist/ /usr/share/nginx/html/

# Exponer puerto
EXPOSE ${PORT}