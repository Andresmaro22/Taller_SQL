-- Ejercicio 16: Cliente que más ha gastado en total

SELECT clientes.nombre,
       SUM(ventas.total_venta) AS total_gastado
FROM ventas
INNER JOIN clientes
    ON clientes.id_cliente = ventas.id_cliente
GROUP BY clientes.nombre
ORDER BY total_gastado DESC
LIMIT 1;