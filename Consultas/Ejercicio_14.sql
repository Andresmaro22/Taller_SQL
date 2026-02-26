-- Ejercicio 14: Mostrar ventas realizadas en 2025 ordenadas por fecha descendente

SELECT *
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;