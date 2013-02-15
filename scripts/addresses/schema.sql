-- 
-- CNEFE
-- 

CREATE TABLE IF NOT EXISTS addresses (
  streetname_id INTEGER  NOT NULL,
  address_number VARCHAR(7) NOT NULL,
  number_modifier VARCHAR(7)  NULL,
  complement1 VARCHAR(20)  NULL,
  complement1_value VARCHAR(10)  NULL,
  complement2 VARCHAR(20)  NULL,
  complement2_value VARCHAR(10)  NULL,
  complement3 VARCHAR(20)  NULL,
  complement3_value VARCHAR(10)  NULL,
  complement4 VARCHAR(20)  NULL,
  complement4_value VARCHAR(10)  NULL,
  complement5 VARCHAR(20)  NULL,
  complement5_value VARCHAR(10)  NULL,
  complement6 VARCHAR(20)  NULL,
  complement6_value VARCHAR(10)  NULL,
  latitude VARCHAR(15)  NULL,
  longitude VARCHAR(15)  NULL,
  nulo TEXT  NULL,
  locality VARCHAR(60)  NULL,
  kind VARCHAR(2)  NULL,
  identification VARCHAR(40)  NULL,
  multiplicity INTEGER  NULL,
  colective_domicile VARCHAR(30)  NULL,
  block VARCHAR(3)  NULL,
  face VARCHAR(3)  NULL,
  cep VARCHAR(8)  NULL
);

CREATE TABLE IF NOT EXISTS streetnames (
  id INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
  state_id TEXT NOT NULL,
  city_id TEXT NOT NULL,
  district_id TEXT  NULL,
  subdistrict_id TEXT  NULL,
  sector_id TEXT  NULL,
  sector_situation INTEGER  NULL,
  type TEXT NOT NULL,
  title TEXT NOT NULL,
  name TEXT NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS IDX_LOGRADOUROS ON streetnames(
  state_id  ASC,
  city_id  ASC,
  district_id  ASC,
  subdistrict_id ASC,
  sector_id ASC,
  sector_situation ASC,
  type  ASC,
  title  ASC,
  name  ASC
);

