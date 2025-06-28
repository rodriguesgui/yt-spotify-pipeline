-- public.fact_song_artist definição

-- Drop table

-- DROP TABLE public.fact_song_artist;

CREATE TABLE public.fact_song_artist (
	artist_id int4 NOT NULL,
	song_id int4 NOT NULL,
	CONSTRAINT fact_song_artist_pkey PRIMARY KEY (artist_id, song_id)
);


-- public.fact_song_artist chaves estrangeiras

ALTER TABLE public.fact_song_artist ADD CONSTRAINT fact_song_artist_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.dim_artist(artist_id);
ALTER TABLE public.fact_song_artist ADD CONSTRAINT fact_song_artist_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.dim_song(song_id);