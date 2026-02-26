-- Ejercicio 18: Clientes mayores de 60 años con total gastado

SELECT clientes.nombre,
       (strftime('%Y','now') - strftime('%Y',clientes.fecha_nacimiento)) AS edad_aproximada,
       SUM(ventas.total_venta) AS total_gastado
FROM clientes
INNER JOIN ventas
ON clientes.id_cliente = ventas.id_cliente
GROUP BY clientes.id_cliente, clientes.nombre
HAVING edad_aproximada > 60;