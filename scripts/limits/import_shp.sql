-- This is ugly, need refactoring

-- UF 11

drop table if exists sectors_tmp;

.loadshp data/limits/shp/11SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 12

drop table if exists sectors_tmp;

.loadshp data/limits/shp/12SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 13

drop table if exists sectors_tmp;

.loadshp data/limits/shp/13SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 14

drop table if exists sectors_tmp;

.loadshp data/limits/shp/14SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 15

drop table if exists sectors_tmp;

.loadshp data/limits/shp/15SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 16

drop table if exists sectors_tmp;

.loadshp data/limits/shp/16SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 17

drop table if exists sectors_tmp;

.loadshp data/limits/shp/17SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 21

drop table if exists sectors_tmp;

.loadshp data/limits/shp/21SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 22

drop table if exists sectors_tmp;

.loadshp data/limits/shp/22SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 23

drop table if exists sectors_tmp;

.loadshp data/limits/shp/23SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 24

drop table if exists sectors_tmp;

.loadshp data/limits/shp/24SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 25

drop table if exists sectors_tmp;

.loadshp data/limits/shp/25SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 26

drop table if exists sectors_tmp;

.loadshp data/limits/shp/26SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 27

drop table if exists sectors_tmp;

.loadshp data/limits/shp/27SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;


-- UF 28

drop table if exists sectors_tmp;

.loadshp data/limits/shp/28SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 29

drop table if exists sectors_tmp;

.loadshp data/limits/shp/29SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;



-- UF 31

drop table if exists sectors_tmp;

.loadshp data/limits/shp/31SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 32

drop table if exists sectors_tmp;

.loadshp data/limits/shp/32SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 33

drop table if exists sectors_tmp;

.loadshp data/limits/shp/33SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 35

drop table if exists sectors_tmp;

.loadshp data/limits/shp/35SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 41

drop table if exists sectors_tmp;

.loadshp data/limits/shp/41SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 42

drop table if exists sectors_tmp;

.loadshp data/limits/shp/42SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 43

drop table if exists sectors_tmp;

.loadshp data/limits/shp/43SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;


-- UF 50

drop table if exists sectors_tmp;

.loadshp data/limits/shp/50SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 51

drop table if exists sectors_tmp;

.loadshp data/limits/shp/51SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 52

drop table if exists sectors_tmp;

.loadshp data/limits/shp/52SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;

-- UF 53

drop table if exists sectors_tmp;

.loadshp data/limits/shp/53SEE250GC_SIR sectors_tmp Latin1 4674

insert or replace into bairros select distinct CD_GEOCODB, NM_BAIRRO from sectors_tmp where CD_GEOCODB <> "  ";

insert or replace into subdistricts select distinct CD_GEOCODS, NM_SUBDIST from sectors_tmp;

insert or replace into districts select distinct CD_GEOCODD, NM_DISTRIT from sectors_tmp;

insert or replace into cities select distinct cast(CD_GEOCODM as Integer), NM_MUNICIP from sectors_tmp;

insert or replace into sectors select CD_GEOCODI, TIPO, ST_MULTI(Transform(Geometry, 4326)) from sectors_tmp;
  
-- drop temporary table

drop table if exists sectors_tmp;