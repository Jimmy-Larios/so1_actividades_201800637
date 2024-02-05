#!/bin/bash
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

API_URL="https://api.github.com/users/${GITHUB_USER}"
JSON_DATA=$(curl -s "${API_URL}")

USER_ID=$(echo "${JSON_DATA}" | jq -r '.id')
CREATED_AT=$(echo "${JSON_DATA}" | jq -r '.created_at')

echo "Hola ${GITHUB_USER}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}."

LOG_DIR="/tmp/$(date +'%Y%m%d')"
LOG_FILE="${LOG_DIR}/saludos.log"

mkdir -p "${LOG_DIR}"
echo "$(date +'%Y-%m-%d %H:%M:%S') - Hola ${GITHUB_USER}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}." >> "${LOG_FILE}"

echo "Mensaje registrado en el log file: ${LOG_FILE}"

CRON_CMD="*/5 * * * * $(pwd)/nombre_de_tu_script.sh"
(crontab -l ; echo "${CRON_CMD}") | crontab -

echo "Cronjob creado para ejecutar el script cada 5 minutos."
