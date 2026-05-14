# Database Schema: `analytics`

## Tables

### `canciones` — Songs

| Column | Type | Nullable |
|--------|------|----------|
| id_csv | integer | NO |
| artist_name | character varying | YES |
| track_name | text | YES |
| track_id | character varying | YES |
| popularity | smallint | YES |
| year | smallint | YES |
| genre | character varying | YES |
| danceability | numeric | YES |
| energy | numeric | YES |
| key | smallint | YES |
| loudness | numeric | YES |
| mode | smallint | YES |
| speechiness | numeric | YES |
| acousticness | numeric | YES |
| instrumentalness | numeric | YES |
| liveness | numeric | YES |
| valence | numeric | YES |
| tempo | numeric | YES |
| duration_ms | integer | YES |
| time_signature | smallint | YES |

### `usuarios` — Users

| Column | Type | Nullable |
|--------|------|----------|
| dni | character varying | NO |
| nombre | character varying | YES |
| apellidos | character varying | YES |
| id_direccion | integer | YES |
| fecha_nacimiento | date | YES |

### `direcciones` — Addresses

| Column | Type | Nullable |
|--------|------|----------|
| id | integer | NO |
| direccion | character varying | YES |
| numero | smallint | YES |
| poblacion | character varying | YES |
| cpostal | character varying | YES |
| provincia | character varying | YES |

### `favoritas` — Favorites (user-song links)

| Column | Type | Nullable |
|--------|------|----------|
| dni | character varying | NO |
| track_id | character varying | NO |

## Foreign Key Relationships

| From | To | On |
|------|----|----|
| `favoritas.dni` → | `usuarios.dni` | NO ACTION |
| `favoritas.track_id` → | `canciones.track_id` | NO ACTION |
| `usuarios.id_direccion` → | `direcciones.id` | NO ACTION |
