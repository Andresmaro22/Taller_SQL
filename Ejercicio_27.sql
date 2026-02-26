-- Ejercicio 27: Diferencia entre el mes con mayores y menores ventas en 2025

WITH ventas_mensuales AS (
    SELECT strftime('%m', fecha_venta) AS mes,
           SUM(total_venta) AS total_mes
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)

SELECT MAX(total_mes) - MIN(total_mes) AS diferencia_ventas
FROM ventas_mensuales;