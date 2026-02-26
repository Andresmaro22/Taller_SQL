-- Ejercicio 6: Calcular el monto total histórico de ventas

SELECT SUM(total_venta) AS monto_total_historico
FROM ventas;