#!/bin/bash

# Para cada archivo en el directorio indicado por el primer parametro
# que empiece con "archivo", copiarlo al EFS de backup pasado por el
# segundo parametro.
#
# La idea es hacer backup de los archivos de prueba generados.
# La frecuencia la determina el cronjob que invoca este script.
for archivo in "$1/archivo*"; do
    mv $archivo $2
done
