#!/bin/bash

# Crea un archivo de nombre "archivo-" seguido por el dia, mes
# anio, hora, minuto y segundo en el directorio pasado como
# parametro.
#
# Por ejemplo: /mnt/archivo-25-06-24_21.45.01
#
# La idea es generar archivos de prueba.
# La frecuencia la determina el cronjob que invoca este script.
touch "$1/archivo-$(date +"%d-%m-%-y_%H.%M.%S")"
