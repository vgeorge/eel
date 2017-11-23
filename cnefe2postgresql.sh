#!/bin/sh

# Edite as configurações de importação
DATA_DIR=data/cnefe
POSTGRESQL_PARAMS="-h localhost -p 15432 -d eel -U eel"

psql $POSTGRESQL_PARAMS -c "
  CREATE TABLE IF NOT EXISTS addresses(
    sectorId text NOT NULL,
    sectorSituation text,
    addressType text,
    addressTitle text,
    addressName text,
    addressNumber text,
    addressModifier text,
    element1 text,
    value1 text,
    element2 text,
    value2 text,
    element3 text,
    value3 text,
    element4 text,
    value4 text,
    element5 text,
    value5 text,
    element6 text,
    value7 text,
    lat text,
    lon text,
    locality text,
    blank text,
    specie text,
    identification text,
    indicator text,
    collectiveIdentification text,
    block text,
    face text,
    cep text
  );
  DELETE FROM addresses;
"

for file in $(find $DATA_DIR -name "*.zip"); do
  unzip -p $file | gawk -v FIELDWIDTHS='15 1 20 30 60 8 7 20 10 20 10 20 10 20 10 20 10 20 10 15 15 60 60 2 40 1 30 3 3 8' -v OFS=';' '{ $1=$1; print }' | psql $POSTGRESQL_PARAMS -c "
    set client_encoding = 'latin1';
    COPY addresses from stdin DELIMITER ';';
  "
done