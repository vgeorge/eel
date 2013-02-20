-- 
-- CNEFE
-- 

DROP TABLE IF EXISTS streets;

CREATE TABLE streets (
  id        INTEGER PRIMARY KEY AUTOINCREMENT,
  city_id   INTEGER NOT NULL,
  type      TEXT NOT NULL,
  title     TEXT,
  name      TEXT NOT NULL,
  FOREIGN KEY(city_id) REFERENCES cities(id)
);

CREATE UNIQUE INDEX IF NOT EXISTS IDX_LOGRADOUROS ON streets(
  city_id  ASC,
  type  ASC,
  title  ASC,
  name  ASC
);

DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
  sector_id INTEGER NOT NULL,
  street_id INTEGER NOT NULL,
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
  cep VARCHAR(8)  NULL,
  
  FOREIGN KEY(sector_id) REFERENCES sectors(id),
  FOREIGN KEY(street_id) REFERENCES streets(id)
  
);



