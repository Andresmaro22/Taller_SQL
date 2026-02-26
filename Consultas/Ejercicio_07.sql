-- Ejercicio 7: Listar accesorios con precio menor a 500

SELECT *
FROM productos
WHERE categoria = 'Accesorios'
AND precio < 500;