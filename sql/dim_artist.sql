-- public.dim_artist definição

-- Drop table

-- DROP TABLE public.dim_artist;

CREATE TABLE public.dim_artist (
	artist_id serial4 NOT NULL,
	artist_name text NULL,
	CONSTRAINT dim_artist_artist_name_key UNIQUE (artist_name),
	CONSTRAINT dim_artist_pkey PRIMARY KEY (artist_id)
);
