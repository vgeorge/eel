-- 
-- EEL: Administrative boundaries
-- 

.bail ON

-- drop existing tables

SELECT DiscardGeometryColumn('sectors', 'geom');
DROP TABLE IF EXISTS sectors;
DROP TABLE IF EXISTS subdistricts;
DROP TABLE IF EXISTS districts;
DROP TABLE IF EXISTS bairros;
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS states;

-- States

CREATE TABLE states (
  id            INTEGER PRIMARY KEY,
  region        TEXT,
  abbreviation  TEXT,
  name          TEXT,
  streets_count INTEGER DEFAULT 0,
  addresses_count INTEGER DEFAULT 0
);

-- Cities

CREATE TABLE cities (
  id              INTEGER PRIMARY KEY,
  name            TEXT,
  state_id        INTEGER,
  streets_count   INTEGER DEFAULT 0,
  address_count   INTEGER DEFAULT 0,
  FOREIGN KEY(state_id) REFERENCES states(id)
);

-- Bairros (City areas)

CREATE TABLE bairros (
  id              INTEGER PRIMARY KEY,
  name            TEXT,
  city_id         INTEGER,
  addresses_count   INTEGER DEFAULT 0,
  FOREIGN KEY(city_id) REFERENCES cities(id)
);

-- Districts

CREATE TABLE districts (
  id              INTEGER PRIMARY KEY,
  name            TEXT,
  city_id         INTEGER,
  addresses_count   INTEGER DEFAULT 0,
  FOREIGN KEY(city_id) REFERENCES cities(id)
);

-- Subdistricts

CREATE TABLE subdistricts (
  id              INTEGER PRIMARY KEY,
  name            TEXT,
  district_id     INTEGER,
  address_count   INTEGER DEFAULT 0,
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

-- Censitary Sectors

CREATE TABLE sectors (
  id              INTEGER PRIMARY KEY,
  type            TEXT NOT NULL,
  subdistrict_id  INTEGER,
  address_count   INTEGER DEFAULT 0,
  FOREIGN KEY(subdistrict_id) REFERENCES subdistricts(id)
);

SELECT AddGeometryColumn('sectors', 'geom', 4326, 'MULTIPOLYGON', 'XYM');