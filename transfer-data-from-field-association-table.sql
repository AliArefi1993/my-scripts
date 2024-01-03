DELETE FROM supplier_classifications;
INSERT INTO supplier_classifications (supplier_id, classification_id)
SELECT id, CASE WHEN supplier_type = 'Manufacture' THEN 1 
WHEN supplier_type = 'TechnicalServices' THEN 2 
WHEN supplier_type = 'Commercial' THEN 3
END
FROM public.suppliers WHERE supplier_type IS NOT NULL;