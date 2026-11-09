-- Consultas del proyecto Embudo de ventas B2B
-- Motor SQLite. Las vistas pipeline y cuentas corrigen dos errores de digitación de los datos originales.

CREATE VIEW pipeline AS
SELECT opportunity_id, sales_agent,
       CASE WHEN product = 'GTXPro' THEN 'GTX Pro' ELSE product END AS product,
       account, deal_stage, engage_date, close_date, close_value
FROM sales_pipeline_raw;

CREATE VIEW cuentas AS
SELECT account,
       CASE WHEN sector = 'technolgy' THEN 'technology' ELSE sector END AS sector,
       year_established, revenue, employees, office_location, subsidiary_of
FROM accounts_raw;

-- 1. Tamaño de cada etapa del embudo
SELECT deal_stage AS etapa,
       COUNT(*)    AS oportunidades
FROM pipeline
GROUP BY deal_stage
ORDER BY CASE deal_stage
           WHEN 'Prospecting' THEN 1
           WHEN 'Engaging'    THEN 2
           WHEN 'Won'         THEN 3
           WHEN 'Lost'        THEN 4
         END;

-- 2. Tasa de cierre por producto, solo oportunidades cerradas
SELECT p.product                                             AS producto,
       pr.sales_price                                        AS precio_lista,
       COUNT(*)                                              AS cerradas,
       ROUND(AVG(CASE WHEN p.deal_stage = 'Won' THEN 1.0 ELSE 0 END), 3) AS tasa_cierre
FROM pipeline AS p
JOIN products AS pr ON pr.product = p.product
WHERE p.deal_stage IN ('Won', 'Lost')
GROUP BY p.product, pr.sales_price
ORDER BY pr.sales_price;

-- 3. Tasa de cierre por sector del cliente, oficina regional y gerente
WITH cerradas AS (
    SELECT p.*, c.sector, t.regional_office, t.manager,
           CASE WHEN p.deal_stage = 'Won' THEN 1.0 ELSE 0 END AS ganada
    FROM pipeline AS p
    LEFT JOIN cuentas     AS c ON c.account     = p.account
    LEFT JOIN sales_teams AS t ON t.sales_agent = p.sales_agent
    WHERE p.deal_stage IN ('Won', 'Lost')
)
SELECT 'Sector' AS dimension, sector AS valor, COUNT(*) AS cerradas,
       ROUND(AVG(ganada), 3) AS tasa_cierre
FROM cerradas GROUP BY sector
UNION ALL
SELECT 'Oficina', regional_office, COUNT(*), ROUND(AVG(ganada), 3)
FROM cerradas GROUP BY regional_office
UNION ALL
SELECT 'Gerente', manager, COUNT(*), ROUND(AVG(ganada), 3)
FROM cerradas GROUP BY manager
ORDER BY dimension, tasa_cierre;

-- 4. Peso de cada producto en los negocios ganados y en los ingresos
WITH ganadas AS (
    SELECT product,
           COUNT(*)         AS negocios,
           SUM(close_value) AS ingresos
    FROM pipeline
    WHERE deal_stage = 'Won'
    GROUP BY product
)
SELECT product                                              AS producto,
       negocios,
       ingresos,
       ROUND(1.0 * negocios / SUM(negocios) OVER (), 3)     AS pct_negocios,
       ROUND(1.0 * ingresos / SUM(ingresos) OVER (), 3)     AS pct_ingresos
FROM ganadas
ORDER BY ingresos DESC;

-- 5. Duración del ciclo de venta y tasa de cierre por tramo de días
WITH cerradas AS (
    SELECT deal_stage,
           julianday(close_date) - julianday(engage_date) AS dias
    FROM pipeline
    WHERE deal_stage IN ('Won', 'Lost')
)
SELECT CASE
         WHEN dias <= 7  THEN '1. Hasta 7 días'
         WHEN dias <= 30 THEN '2. 8 a 30 días'
         WHEN dias <= 60 THEN '3. 31 a 60 días'
         WHEN dias <= 90 THEN '4. 61 a 90 días'
         ELSE                 '5. Más de 90 días'
       END                                                   AS tramo,
       COUNT(*)                                              AS cerradas,
       ROUND(AVG(CASE WHEN deal_stage = 'Won' THEN 1.0 ELSE 0 END), 3) AS tasa_cierre
FROM cerradas
GROUP BY tramo
ORDER BY tramo;

-- 6. Ciclo más largo observado en un negocio cerrado
SELECT MAX(julianday(close_date) - julianday(engage_date)) AS ciclo_maximo_dias
FROM pipeline
WHERE deal_stage IN ('Won', 'Lost');

-- 7. Antigüedad y calidad de registro del pipeline abierto al cierre de los datos
SELECT deal_stage                                           AS etapa,
       COUNT(*)                                             AS abiertas,
       SUM(CASE WHEN account IS NULL THEN 1 ELSE 0 END)     AS sin_cuenta,
       SUM(CASE WHEN julianday('2017-12-31') - julianday(engage_date) > 138
                THEN 1 ELSE 0 END)                          AS mas_viejas_que_cualquier_cierre
FROM pipeline
WHERE deal_stage IN ('Prospecting', 'Engaging')
GROUP BY deal_stage;

-- 8. Valor esperado del pipeline en Engaging, con y sin las oportunidades estancadas
WITH tasa AS (
    SELECT product,
           AVG(CASE WHEN deal_stage = 'Won' THEN 1.0 ELSE 0 END) AS tasa_cierre
    FROM pipeline
    WHERE deal_stage IN ('Won', 'Lost')
    GROUP BY product
),
abiertas AS (
    SELECT p.product,
           julianday('2017-12-31') - julianday(p.engage_date) AS antiguedad,
           pr.sales_price * t.tasa_cierre                      AS valor_esperado
    FROM pipeline AS p
    JOIN products AS pr ON pr.product = p.product
    JOIN tasa     AS t  ON t.product  = p.product
    WHERE p.deal_stage = 'Engaging'
)
SELECT ROUND(SUM(valor_esperado))                                        AS valor_esperado_total,
       ROUND(SUM(CASE WHEN antiguedad <= 138 THEN valor_esperado END))   AS valor_esperado_vigente
FROM abiertas;

