-- public.stg_spotify_youtube definição

-- Drop table

-- DROP TABLE public.stg_spotify_youtube;

CREATE TABLE public.stg_spotify_youtube (
	"Unnamed: 0" int8 NULL,
	"Artist" text NULL,
	"Url_spotify" text NULL,
	"Track" text NULL,
	"Album" text NULL,
	"Album_type" text NULL,
	"Uri" text NULL,
	"Danceability" float8 NULL,
	"Energy" float8 NULL,
	"Key" float8 NULL,
	"Loudness" float8 NULL,
	"Speechiness" float8 NULL,
	"Acousticness" float8 NULL,
	"Instrumentalness" float8 NULL,
	"Liveness" float8 NULL,
	"Valence" float8 NULL,
	"Tempo" float8 NULL,
	"Duration_ms" float8 NULL,
	"Url_youtube" text NULL,
	"Title" text NULL,
	"Channel" text NULL,
	"Views" float8 NULL,
	"Likes" float8 NULL,
	"Comments" float8 NULL,
	"Description" text NULL,
	"Licensed" bool NULL,
	official_video bool NULL,
	"Stream" float8 NULL
);