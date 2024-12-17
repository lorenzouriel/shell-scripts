#!/bin/bash

CAMINHO_IMAGENS=/home/waves/projects/shell-scripts/downloads/imagens-livros

for imagem in $@
do
    convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done
