#!/bin/bash

# Lee la variable GITHUB_USER
GITHUB_USER="marcodeleon20"

# Se obtiene la fecha actual
FEACHA_ACTUAL=$(date '+%Y-%m-%d')

# S crea directorio en el cual se guardan los logs cada 5 minutos
mkdir -p /tmp/${FEACHA_ACTUAL}

# Se consulta la URL
CONSULTA_USUARIO=$(curl -s https://api.github.com/users/${GITHUB_USER})

# Se obtienen los datos necesarios
USER=$(echo ${CONSULTA_USUARIO} | jq -r .login)
ID=$(echo ${CONSULTA_USUARIO} | jq -r .id)
FECHA_CREACION=$(echo ${CONSULTA_USUARIO} | jq -r .created_at)

# se crea el mensaje
MESSAGE="Hola ${USER}. User ID: ${ID}. Cuenta fue creada el: ${FECHA_CREACION}."

# se imprime en la terminal
echo ${MESSAGE}

# Se guarda el mensaje creado en el archivo saludos.log
echo ${MESSAGE} > /tmp/${FEACHA_ACTUAL}/saludos.log


# Para crear el cronjob se utlizo lo siguiente:
#Se abrió el  crontab con el comando crontab -e en la terminal.
#Cuando se abrió el editor, se agergó la línea del cronjob al final del archivo.
#Comando agregado: */5 * * * * /home/marco/Documentos/GitHub/so1_actividades_202010014/Actividad2/script.sh
#Guardar y cerrar el archivo.
#Esto creará un cronjob que se ejecutará cada 5 minutos.
