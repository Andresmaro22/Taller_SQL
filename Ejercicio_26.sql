-- Ejercicio 26: Clientes que solo han comprado Paracaídas y el total gastado

SELECT 
    clientes.nombre,
    SUM(ventas.total_venta) AS total_gastado
FROM clientes
INNER JOIN ventas
    ON clientes.id_cliente = ventas.id_cliente
INNER JOIN detalle_ventas
    ON ventas.id_venta = detalle_ventas.id_venta
INNER JOIN productos
    ON productos.id_producto = detalle_ventas.id_producto
GROUP BY clientes.id_cliente, clientes.nombre
HAVING 
    SUM(CASE WHEN productos.categoria = 'Accesorios' THEN 1 ELSE 0 END) = 0
    AND
    SUM(CASE WHEN productos.categoria = 'Paracaídas' THEN 1 ELSE 0 END) > 0;