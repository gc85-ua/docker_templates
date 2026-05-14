#!/bin/bash
set -e
psql -U postgres -d analytics -c "\copy direcciones FROM '/init_data/ListaDirecciones.csv' WITH (FORMAT csv, DELIMITER ';',HEADER);"
psql -U postgres -d analytics -c "\copy usuarios FROM '/init_data/ListaUsuarios.csv' WITH (FORMAT csv, DELIMITER ';',HEADER);"
psql -U postgres -d analytics -c "\copy canciones FROM '/init_data/spotify_data.csv' WITH (FORMAT csv, DELIMITER ',',HEADER);"
psql -U postgres -d analytics -c "\copy favoritas FROM '/init_data/favoritas.csv' WITH (FORMAT csv, DELIMITER ',',HEADER);"
echo "Datos insertados."