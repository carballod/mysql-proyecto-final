SELECT A.FECHA, SUM (B.CANTIDAD * B.PRECIO) AS FACTURACION
FROM facturas A
INNER JOIN 
items B 
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20201554'
GROUP BY A.FECHA;

SELECT COUNT(*) FROM productos;
CALL sp_venta('20210619', 100, 100);

CREATE TABLE facturacion(
FECHA DATE NULL,
VENTA_TOTAL FLOAT
);

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

SELECT * FROM facturacion;
CALL sp_venta('20210622',15,100);
