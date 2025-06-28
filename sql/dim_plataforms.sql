-- public.dim_platform definição

-- Drop table

-- DROP TABLE public.dim_platform;

CREATE TABLE public.dim_platform (
	platform_id serial4 NOT NULL,
	song_id int4 NOT NULL,
	uri text NULL,
	url_spotify text NULL,
	url_youtube text NULL,
	"views" int8 NULL,
	likes int8 NULL,
	"comments" int8 NULL,
	description text NULL,
	licensed text NULL,
	official_video text NULL,
	stream int8 NULL,
	CONSTRAINT dim_platform_pkey PRIMARY KEY (platform_id)
);


-- public.dim_platform chaves estrangeiras

ALTER TABLE public.dim_platform ADD CONSTRAINT dim_platform_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.dim_song(song_id);