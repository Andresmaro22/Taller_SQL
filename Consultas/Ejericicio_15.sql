-- Ejercicio 15: Nombre y precio del accesorio más barato

SELECT nombre,
       precio
FROM productos
WHERE categoria = 'Accesorios'
ORDER BY precio ASC
LIMIT 1;