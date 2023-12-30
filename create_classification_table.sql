-- Table: public.classifications

-- DROP TABLE public.classifications;

CREATE TABLE IF NOT EXISTS public.classifications
(
    id integer NOT NULL DEFAULT nextval('classifications_id_seq'::regclass),
    name_translations hstore,
    CONSTRAINT classifications_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.classifications
    OWNER to postgres;