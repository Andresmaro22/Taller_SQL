-- Ejercicio 29: Porcentaje de ingresos generados por el cupón ULTIMO_SUSPIRO

SELECT 
    (SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) * 100.0
     / SUM(total_venta)) AS porcentaje_ingresos_cupon
FROM ventas;