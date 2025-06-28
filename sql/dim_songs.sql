-- public.dim_song definição

-- Drop table

-- DROP TABLE public.dim_song;

CREATE TABLE public.dim_song (
	song_id serial4 NOT NULL,
	track_name text NULL,
	album_name text NULL,
	album_type text NULL,
	duration_ms int8 NULL,
	title text NULL,
	channel text NULL,
	CONSTRAINT dim_song_pkey PRIMARY KEY (song_id)
);