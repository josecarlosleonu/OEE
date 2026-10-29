-- Reemplaza TU_PROYECTO y TU_DATASET
CREATE SCHEMA IF NOT EXISTS `TU_PROYECTO.TU_DATASET` OPTIONS (location = "US");

CREATE TABLE IF NOT EXISTS `TU_PROYECTO.TU_DATASET.siemens_eventos` (
  timestamp        TIMESTAMP NOT NULL,
  dispositivo      STRING,
  linea            STRING,
  cod_evento       INT64,
  estado           STRING,
  velocidad        FLOAT64,
  unid_producidas  INT64,
  unid_buenas      INT64,
  temperatura      FLOAT64,
  raw              STRING
)
PARTITION BY DATE(timestamp)
CLUSTER BY linea, dispositivo;
