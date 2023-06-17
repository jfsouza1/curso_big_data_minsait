#!/bin/bash
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG="${BASEDIR}/../../config/config.sh"
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

    #hdfs dfs -mkdir /datalake/raw/$table
    #hdfs dfs -chmod 777 /datalake/raw/$table
    #hdfs dfs -copyFromLocal $table.csv /datalake/raw/$table
    #beeline -u jdbc:hive://localhost1000 -f ../../script/hql/crea_table_$table.hql
done

echo "Finalizando a criação em ${DATE}"