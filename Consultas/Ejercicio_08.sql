-- Ejercicio 8: Contar cuántas ventas usaron el cupón ULTIMO_SUSPIRO

SELECT COUNT(*) AS total_usos_cupon
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';