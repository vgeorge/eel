#!/bin/bash

# Change the following line if IBGE changes files location
IBGE_FTP="ftp://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Cadastro_Nacional_de_Enderecos_Fins_Estatisticos/"

# Fetch files to ibge_files directory
( cd data/cnefe && wget IBGE_FTP --no-directories --continue --recursive -A.zip $IBGE_FTP)