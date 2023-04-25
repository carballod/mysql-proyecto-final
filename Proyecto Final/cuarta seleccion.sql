SELECT f_cliente_aleatorio() AS CLIENTE,
f_producto_aleatorio() AS PRODUCTO,
f_vendedor_aleatorio() AS VENDEDOR;

SELECT MAX(NUMERO) + 1 FROM facturas;

CALL sp_venta('20220516', 15, 100);

SELECT MAX(NUMERO) FROM facturas;
SELECT COUNT(*) FROM facturas;

SELECT NUMERO FROM FACTURAS ORDER BY NUMERO DESC LIMIT 88000;

