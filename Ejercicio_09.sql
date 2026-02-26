-- Ejercicio 9: Mostrar el valor de la venta con mayor monto

SELECT id_venta,
       total_venta
FROM ventas
WHERE total_venta = (
    SELECT MAX(total_venta)
    FROM ventas
);