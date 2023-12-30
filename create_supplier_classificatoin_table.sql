
-- Table: public.supplier_classifications

-- DROP TABLE public.supplier_classifications;

CREATE TABLE IF NOT EXISTS public.supplier_classifications
(
    supplier_id integer NOT NULL,
    classification_id integer NOT NULL,
    CONSTRAINT supplier_classifications_pkey PRIMARY KEY (supplier_id, classification_id),
    CONSTRAINT supplier_classifications_classification_id_fkey FOREIGN KEY (classification_id)
        REFERENCES public.classifications (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT supplier_classifications_supplier_id_fkey FOREIGN KEY (supplier_id)
        REFERENCES public.suppliers (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.supplier_classifications
    OWNER to postgres;