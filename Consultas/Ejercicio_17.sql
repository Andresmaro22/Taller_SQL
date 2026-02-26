-- Ejercicio 17: Calcular cuánto dinero se dejó de ingresar por el cupón ULTIMO_SUSPIRO (30% descuento)

SELECT
    SUM(total_venta) AS total_recibido_con_descuento,
    SUM(total_venta / 0.70) AS total_sin_descuento,
    SUM((total_venta / 0.70) - total_venta) AS dinero_no_ingresado
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';