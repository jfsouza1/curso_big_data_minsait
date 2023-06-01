#!/bin/bash
BASEDIR="$( cd "$( dirname "${BASH_SOUCE[0]}")" && pwd )"
CONFIG="{BASEDIR}/../../config/config.sh"
source "${CONFIG}"

echo "Iniciando a criação em ${DATE}"

for table in "${TABLES[@]}"
do
    echo "tabela $table"
    cd ../../raw
    mkdir $table
    chmod 777 $table
    cd ../raw/$table
    curl -O https://raw.githubusercontent.com/caiuafranca/dados_curso/main/$table.csv

done

echo "Finalizando a criação em ${DATE}"