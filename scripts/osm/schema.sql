-- OpenStreetMap

CREATE TABLE [osm_nodes] (
  id INTEGER NOT NULL,
  geom TEXT NOT NULL
);

CREATE TABLE [osm_nodes_tags] (
[id] INTEGER  NOT NULL ,
[k] TEXT NOT NULL DEFAULT '',
[v] TEXT NOT NULL DEFAULT ''
);
