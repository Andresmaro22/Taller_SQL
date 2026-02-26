-- Ejercicio 2: Listar paracaídas ordenados de mayor a menor precio

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC;