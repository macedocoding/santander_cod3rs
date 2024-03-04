-- Views
CREATE VIEW view_vendas AS (
	SELECT * FROM vendas
);

CREATE VIEW num_vendas_pais AS (
	SELECT "ship-country", COUNT(*) AS number_orders
	FROM vendas
	WHERE "Courier Status" <> 'Cancelled'
	GROUP BY "ship-country" 
);

SELECT * FROM num_vendas_pais;


-- replace
CREATE OR REPLACE VIEW num_vendas_pais AS (
	SELECT "ship-country", 
	-- astype("tipo_dado")
	-- int(), float()...
	CAST(sum("Qty") AS BIGINT) AS number_orders
	FROM vendas
	WHERE "Courier Status" <> 'Cancelled'
	GROUP BY "ship-country" 
);



-- Temp views

-- create recursive view/table

-- tables vs views vs materialized views


