#!/bin/bash

mkdir -p data/cnefe

# Change the following line if IBGE changes files location
IBGE_FTP="ftp://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Cadastro_Nacional_de_Enderecos_Fins_Estatisticos/"

# Fetch files
( cd data/cnefe && wget ftp-url --continue --no-host-directories --cut-dirs=3 --recursive -A.zip $IBGE_FTP)
