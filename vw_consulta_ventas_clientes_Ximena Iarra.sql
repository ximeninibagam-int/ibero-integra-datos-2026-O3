USE DB_Customer360_Lab;
GO
 
CREATE OR ALTER VIEW dbo.vw_consulta_ventas_cliente_nombre_apellido
AS
SELECT
    c.cliente_id,
    c.nombre AS nombre_completo,
    v.venta_id,
    v.monto_venta,
    v.fecha_venta
FROM dbo.Tabla_Clientes AS c
INNER JOIN dbo.Tabla_Ventas AS v
    ON c.cliente_id = v.cliente_id;
GO
 
SELECT * 
FROM dbo.vw_consulta_ventas_cliente_nombre_apellido;
GO