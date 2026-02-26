-- Ejercicio 28: Clientes que no han comprado en los últimos 6 meses

SELECT clientes.nombre,
       MAX(ventas.fecha_venta) AS ultima_compra
FROM clientes
INNER JOIN ventas
    ON clientes.id_cliente = ventas.id_cliente
GROUP BY clientes.nombre
HAVING MAX(ventas.fecha_venta) < DATE('now', '-6 months');