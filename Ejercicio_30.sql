-- Ejercicio 30: Análisis de ingresos por rango de edad

SELECT
    CASE
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS rango_edad,
    COUNT(*) AS total_clientes,
    SUM(total_gastado) AS ingresos_totales
FROM (
    SELECT clientes.id_cliente,
           (strftime('%Y','now') - strftime('%Y',clientes.fecha_nacimiento)) AS edad,
           SUM(ventas.total_venta) AS total_gastado
    FROM clientes
    INNER JOIN ventas
        ON clientes.id_cliente = ventas.id_cliente
    GROUP BY clientes.id_cliente
)
GROUP BY rango_edad;