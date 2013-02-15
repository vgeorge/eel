-- 
-- EEL: Administrative boundaries
-- 

.bail ON

-- States

DROP TABLE IF EXISTS states;

CREATE TABLE states (
  id      INTEGER PRIMARY KEY,
  abbreviation  TEXT,
  name          TEXT
);

-- Cities

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
  id    INTEGER PRIMARY KEY,
  name  TEXT
);

-- Bairros (City areas)

DROP TABLE IF EXISTS bairros;

CREATE TABLE bairros (
  id    INTEGER PRIMARY KEY,
  name  TEXT
);

-- Districts

DROP TABLE IF EXISTS districts;

CREATE TABLE districts (
  id    INTEGER PRIMARY KEY,
  name  TEXT
);

-- Subdistricts

DROP TABLE IF EXISTS subdistricts;

CREATE TABLE subdistricts (
  id    INTEGER PRIMARY KEY,
  name  TEXT
);

-- Censitary Sectors

DROP TABLE IF EXISTS sectors;

CREATE TABLE sectors (
  id    TEXT NOT NULL,
  type  TEXT not null
);

SELECT AddGeometryColumn('sectors', 'geom', 4326, 'MULTIPOLYGON', 'XYM');