-- public.dim_audio_feat definição

-- Drop table

-- DROP TABLE public.dim_audio_feat;

CREATE TABLE public.dim_audio_feat (
	audio_id serial4 NOT NULL,
	song_id int4 NOT NULL,
	danceability float4 NULL,
	energy float4 NULL,
	musical_key int4 NULL,
	loudness float4 NULL,
	speechiness float4 NULL,
	acousticness float4 NULL,
	instrumentalness float4 NULL,
	liveness float4 NULL,
	valence float4 NULL,
	tempo float4 NULL,
	CONSTRAINT dim_audio_feat_pkey PRIMARY KEY (audio_id)
);


-- public.dim_audio_feat chaves estrangeiras

ALTER TABLE public.dim_audio_feat ADD CONSTRAINT dim_audio_feat_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.dim_song(song_id);