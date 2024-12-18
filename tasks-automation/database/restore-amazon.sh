#!/bin/bash

CAMINHO_RESTORE=/home/waves/projects/shell-scripts/restore

aws s3 sync s3://shell-scripts/$(date + %F) $CAMINHO_RESTORE

cd $CAMINHO_RESTORE
if [ -f $1.sql ]
then
    mysql -u root mutillidae < $1.sql
    if [ $? -eq 0 ]
    then
        echo "O restore foi realizado com sucesso"
    fi
else
    echo "O arquivo procurado não existe no diretório"
fi
