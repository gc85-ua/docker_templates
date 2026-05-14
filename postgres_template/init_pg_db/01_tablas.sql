CREATE TABLE
    direcciones (
        id SERIAL PRIMARY KEY,
        direccion VARCHAR(255),
        numero SMALLINT,
        poblacion VARCHAR(255),
        cpostal VARCHAR(5),
        provincia VARCHAR(255)
    );

CREATE TABLE
    usuarios (
        dni VARCHAR(9) PRIMARY KEY,
        nombre VARCHAR(255),
        apellidos VARCHAR(255),
        id_direccion INTEGER REFERENCES direcciones (id),
        fecha_nacimiento DATE
    );

CREATE TABLE
    canciones (
        id_csv INTEGER PRIMARY KEY,
        artist_name VARCHAR(255),
        track_name TEXT,
        track_id VARCHAR(50) UNIQUE,
        popularity SMALLINT,
        year SMALLINT,
        genre VARCHAR(100),
        danceability NUMERIC,
        energy NUMERIC,
        key SMALLINT,
        loudness NUMERIC,
        mode SMALLINT,
        speechiness NUMERIC,
        acousticness NUMERIC,
        instrumentalness NUMERIC,
        liveness NUMERIC,
        valence NUMERIC,
        tempo NUMERIC,
        duration_ms INTEGER,
        time_signature SMALLINT
    );

CREATE TABLE
    favoritas (
        dni VARCHAR(9) REFERENCES usuarios (dni),
        track_id VARCHAR(50) REFERENCES canciones (track_id),
        PRIMARY KEY (dni, track_id)
    );