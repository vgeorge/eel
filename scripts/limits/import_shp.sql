
-- clear tables

DELETE FROM states;
DELETE FROM cities;
DELETE FROM bairros;
DELETE FROM districts;
DELETE FROM subdistricts;
DELETE FROM sectors;

-- STATES import

-- north region
insert into states VALUES (11, "N", "RO", "Rondônia");
insert into states VALUES (12, "N", "AC", "Acre");
insert into states VALUES (13, "N", "AM", "Amazonas");
insert into states VALUES (14, "N", "RR", "Roraima");    
insert into states VALUES (15, "N", "PA", "Pará");
insert into states VALUES (16, "N", "AP", "Amapá");    
INSERT INTO states VALUES (17, "N", "TO", "Tocantins");

-- northeast region
INSERT INTO states VALUES (21, "NE", "MA", "Maranhão");
INSERT INTO states VALUES (22, "NE", "PI", "Piauí");
INSERT INTO states VALUES (23, "NE", "CE", "Ceará");
INSERT INTO states VALUES (24, "NE", "RN", "Rio Grande do Norte");    
INSERT INTO states VALUES (25, "NE", "PB", "Paraíba");
INSERT INTO states VALUES (26, "NE", "PE", "Pernambuco");    
INSERT INTO states VALUES (27, "NE", "AL", "Alagoas");
INSERT INTO states VALUES (28, "NE", "SE", "Sergipe");    
INSERT INTO states VALUES (29, "NE", "BA", "Bahia");

-- southeast region
INSERT INTO states VALUES (31, "SE", "MG", "Minas Gerais");
INSERT INTO states VALUES (32, "SE", "ES", "Espirito Santo");
INSERT INTO states VALUES (33, "SE", "RJ", "Rio de Janeiro");
INSERT INTO states VALUES (35, "SE", "SP", "São Paulo");    

-- south region
INSERT INTO states VALUES (41, "S", "PR", "Paraná");
INSERT INTO states VALUES (42, "S", "SC", "Santa Catarina");
INSERT INTO states VALUES (43, "S", "RS", "Rio Grande do Sul");
  
-- central west region
INSERT INTO states VALUES (50, "CW", "MS", "Mato Grosso do Sul");
INSERT INTO states VALUES (51, "CW", "MT", "Mato Grosso");
INSERT INTO states VALUES (52, "CW", "GO", "Goiás");
INSERT INTO states VALUES (53, "CW", "DF", "Distrito Federal");    
    
-- UF 11

drop table if exists sectors_tmp;

-- create table sectors_tmp from shapefile
.loadshp data/limits/shp/11SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 12

drop table if exists sectors_tmp;

.loadshp data/limits/shp/12SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 13

drop table if exists sectors_tmp;

.loadshp data/limits/shp/13SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 14

drop table if exists sectors_tmp;

.loadshp data/limits/shp/14SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 15

drop table if exists sectors_tmp;

.loadshp data/limits/shp/15SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 16

drop table if exists sectors_tmp;

.loadshp data/limits/shp/16SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 17

drop table if exists sectors_tmp;

.loadshp data/limits/shp/17SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 21

drop table if exists sectors_tmp;

.loadshp data/limits/shp/21SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 22

drop table if exists sectors_tmp;

.loadshp data/limits/shp/22SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 23

drop table if exists sectors_tmp;

.loadshp data/limits/shp/23SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 24

drop table if exists sectors_tmp;

.loadshp data/limits/shp/24SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 25

drop table if exists sectors_tmp;

.loadshp data/limits/shp/25SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 26

drop table if exists sectors_tmp;

.loadshp data/limits/shp/26SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 27

drop table if exists sectors_tmp;

.loadshp data/limits/shp/27SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;


-- UF 28

drop table if exists sectors_tmp;

.loadshp data/limits/shp/28SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 29

drop table if exists sectors_tmp;

.loadshp data/limits/shp/29SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 31

drop table if exists sectors_tmp;

.loadshp data/limits/shp/31SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 32

drop table if exists sectors_tmp;

.loadshp data/limits/shp/32SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 33

drop table if exists sectors_tmp;

.loadshp data/limits/shp/33SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 35

drop table if exists sectors_tmp;

.loadshp data/limits/shp/35SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 41

drop table if exists sectors_tmp;

.loadshp data/limits/shp/41SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 42

drop table if exists sectors_tmp;

.loadshp data/limits/shp/42SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 43

drop table if exists sectors_tmp;

.loadshp data/limits/shp/43SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;
  
-- UF 50

drop table if exists sectors_tmp;

.loadshp data/limits/shp/50SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 51

drop table if exists sectors_tmp;

.loadshp data/limits/shp/51SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 52

drop table if exists sectors_tmp;

.loadshp data/limits/shp/52SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 53

drop table if exists sectors_tmp;

.loadshp data/limits/shp/53SEE250GC_SIR sectors_tmp Latin1 4674

-- insert city info from shapefile
insert or replace into cities select distinct CD_GEOCODM, NM_MUNICIP, substr(CD_GEOCODM,1,2) from sectors_tmp;

-- insert district info from shapefile
insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT, CD_GEOCODM from sectors_tmp;

-- insert bairro info from shapefile
insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO, CD_GEOCODM from sectors_tmp where CD_GEOCODB <> "  ";

-- insert subdistricts info from shapefile
insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST, CD_GEOCODD from sectors_tmp;

-- insert sector info from shapefile
insert or replace into sectors select CD_GEOCODI, TIPO, CD_GEOCODS, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;
  
-- drop last temporary table

drop table if exists sectors_tmp;