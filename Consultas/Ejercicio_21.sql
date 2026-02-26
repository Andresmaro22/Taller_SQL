-- Ejercicio 21: Clientes que han usado el cupón ULTIMO_SUSPIRO al menos 3 veces

SELECT clientes.nombre,
       COUNT(ventas.id_venta) AS veces_usado
FROM ventas
INNER JOIN clientes
    ON clientes.id_cliente = ventas.id_cliente
WHERE ventas.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY clientes.nombre
HAVING COUNT(ventas.id_venta) >= 3;