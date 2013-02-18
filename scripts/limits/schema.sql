-- 
-- EEL: Administrative boundaries
-- 

.bail ON

-- States

DROP TABLE IF EXISTS states;

CREATE TABLE states (
  id            INTEGER PRIMARY KEY,
  region        TEXT,
  abbreviation  TEXT,
  name          TEXT
);

-- Cities

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
  id        INTEGER PRIMARY KEY,
  name      TEXT,
  state_id  INTEGER,
  FOREIGN KEY(state_id) REFERENCES states(id)
);

-- Bairros (City areas)

DROP TABLE IF EXISTS bairros;

CREATE TABLE bairros (
  id    INTEGER PRIMARY KEY,
  name  TEXT,
  city_id  INTEGER,
  FOREIGN KEY(city_id) REFERENCES cities(id)
);

-- Districts

DROP TABLE IF EXISTS districts;

CREATE TABLE districts (
  id    INTEGER PRIMARY KEY,
  name  TEXT,
  city_id  INTEGER,
  FOREIGN KEY(city_id) REFERENCES cities(id)
);

-- Subdistricts

DROP TABLE IF EXISTS subdistricts;

CREATE TABLE subdistricts (
  id    INTEGER PRIMARY KEY,
  name  TEXT,
  district_id  INTEGER,
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

-- Censitary Sectors

DROP TABLE IF EXISTS sectors;

SELECT DiscardGeometryColumn('sectors', 'geom');

CREATE TABLE sectors (
  id    TEXT NOT NULL,
  type  TEXT NOT NULL,
  subdistrict_id  INTEGER,
  FOREIGN KEY(subdistrict_id) REFERENCES subdistricts(id)
);

SELECT AddGeometryColumn('sectors', 'geom', 4326, 'MULTIPOLYGON', 'XYM');