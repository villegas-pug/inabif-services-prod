FROM nginx:alpine

# Copiar nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar dist
COPY dist/ /usr/share/nginx/html/

# Exponer puerto
EXPOSE 80
