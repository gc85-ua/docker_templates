CREATE INDEX index_direcciones_provincia on direcciones(provincia);

CREATE INDEX index_usuarios_fecha_nacimiento on usuarios(fecha_nacimiento);

CREATE INDEX index_canciones_artist_name on canciones(artist_name);
CREATE INDEX index_canciones_genre on canciones(genre);

CREATE INDEX index_favoritas_track_id on favoritas(track_id);
