-- Ejercicio 13: Contar productos en la categoría Paracaídas

SELECT COUNT(*) AS total_paracaidas
FROM productos
WHERE categoria = 'Paracaídas';