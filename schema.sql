CREATE TABLE IF NOT EXISTS [enderecos] (
[logradouro_id] INTEGER  NOT NULL,
[numero] VARCHAR(7)  NOT NULL,
[modificador_numero] VARCHAR(7)  NULL,
[complemento1] VARCHAR(20)  NULL,
[complemento1_valor] VARCHAR(10)  NULL,
[complemento2] vaRCHAR(20)  NULL,
[complemento2_valor] VARCHAR(10)  NULL,
[complemento3] vARCHAR(20)  NULL,
[complemento3_valor] vARCHAR(10)  NULL,
[complemento4] VARCHAR(20)  NULL,
[complemento4_valor] vARCHAR(10)  NULL,
[complemento5] VARCHAR(20)  NULL,
[complemento5_valor] vARCHAR(10)  NULL,
[complemento6] VARCHAR(20)  NULL,
[complemento6_valor] vARCHAR(10)  NULL,
[latitude] vaRCHAR(15)  NULL,
[longitude] VARCHAR(15)  NULL,
[nulo] text  NULL,
[localidade] VARCHAR(60)  NULL,
[especie] VARCHAR(2)  NULL,
[identificacao] VARCHAR(40)  NULL,
[multiplicidade] INTEGER  NULL,
[domicilio_coletivo] VARCHAR(30)  NULL,
[quadra] VARCHAR(3)  NULL,
[face] VARCHAR(3)  NULL,
[cep] VARCHAR(8)  NULL
);

CREATE TABLE IF NOT EXISTS [logradouros] (
[id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
[uf_id] TEXT NOT NULL,
[municipio_id] TEXT NOT NULL,
[distrito_id] TEXT  NULL,
[subdistrito_id] TEXT  NULL,
[setor_id] TEXT  NULL,
[situacao_setor] INTEGER  NULL,
[tipo] TEXT NOT NULL,
[titulo] TEXT NOT NULL,
[nome] TEXT NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS [IDX_LOGRADOUROS] ON [logradouros](
[uf_id]  ASC,
[municipio_id]  ASC,
[distrito_id]  ASC,
[subdistrito_id] ASC,
[setor_id] ASC,
[situacao_setor] ASC,
[tipo]  ASC,
[titulo]  ASC,
[nome]  ASC
);