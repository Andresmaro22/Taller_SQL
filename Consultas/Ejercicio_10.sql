-- Ejercicio 10: Mostrar clientes femeninos ordenados por fecha de nacimiento

SELECT *
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;