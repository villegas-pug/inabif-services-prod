#!/usr/bin/env bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

DESTINO="/root/inabif-app-services/ms-acercandonos/reportes"
FECHA_ARCHIVO=$(date '+%Y%m%d%H%M')

mkdir -p "$DESTINO"

# Reporte Matriz Fam
/usr/bin/curl --fail --silent --show-error --location \
  'https://srvapp03.inabif.gob.pe/api/ms-acercandonos/reportesAcercandonos' \
  --header 'Content-Type: application/json' \
  --data '{
    "fechaInicio": "01/01/2026",
    "fechaFin": "01/01/2026",
    "tipoReporte": "Matriz Fam",
    "servicio": "3"
  }' \
  --output "$DESTINO/Matriz Fam ${FECHA_ARCHIVO}.xlsx"
  
# Reporte Matriz NNA
/usr/bin/curl --fail --silent --show-error --location \
  'https://srvapp03.inabif.gob.pe/api/ms-acercandonos/reportesAcercandonos' \
  --header 'Content-Type: application/json' \
  --data '{
    "fechaInicio": "01/01/2026",
    "fechaFin": "01/01/2026",
    "tipoReporte": "Matriz NNA",
    "servicio": "3"
  }' \
  --output "$DESTINO/Matriz NNA ${FECHA_ARCHIVO}.xlsx"
  
# Reporte Matriz Riesgo
/usr/bin/curl --fail --silent --show-error --location \
  'https://srvapp03.inabif.gob.pe/api/ms-acercandonos/reportesAcercandonos' \
  --header 'Content-Type: application/json' \
  --data '{
    "fechaInicio": "01/01/2026",
    "fechaFin": "01/01/2026",
    "tipoReporte": "Matriz Riesgo",
    "servicio": "3"
  }' \
  --output "$DESTINO/Matriz Riesgo ${FECHA_ARCHIVO}.xlsx"
  
# Reporte Matriz Competencias
/usr/bin/curl --fail --silent --show-error --location \
  'https://srvapp03.inabif.gob.pe/api/ms-acercandonos/reportesAcercandonos' \
  --header 'Content-Type: application/json' \
  --data '{
    "fechaInicio": "01/01/2026",
    "fechaFin": "01/01/2026",
    "tipoReporte": "Matriz Competencias",
    "servicio": "3"
  }' \
  --output "$DESTINO/Matriz Competencias ${FECHA_ARCHIVO}.xlsx"
  
  # Reporte Matriz Sesiones
/usr/bin/curl --fail --silent --show-error --location \
  'https://srvapp03.inabif.gob.pe/api/ms-acercandonos/reportesAcercandonos' \
  --header 'Content-Type: application/json' \
  --data '{
    "fechaInicio": "01/01/2026",
    "fechaFin": "01/01/2026",
    "tipoReporte": "Matriz Sesiones",
    "servicio": "3"
  }' \
  --output "$DESTINO/Matriz Sesiones ${FECHA_ARCHIVO}.xlsx"  
  