-- CONSULTAS BÁSICAS

SELECT * FROM clientes;

SELECT * FROM comercial;

SELECT * FROM auditoria;

SELECT nombre_c, ciudad
FROM clientes;

SELECT nombre_co, comision
FROM comercial;


-- CONSULTAS CON WHERE

SELECT *
FROM clientes
WHERE ciudad='Tenerife';

SELECT *
FROM clientes
WHERE email IS NOT NULL;

SELECT *
FROM comercial
WHERE comision > 0.15;

SELECT *
FROM auditoria
WHERE usuario='root@localhost';

SELECT *
FROM comercial
WHERE nombre_co='Antonio';


-- CONSULTAS JOIN

SELECT a.id_auditoria,
       c.nombre_co,
       c.apellido1,
       a.comisionAnterior,
       a.comisionActual
FROM auditoria a
INNER JOIN comercial c
ON a.id_comercial = c.id_comercial;

SELECT c.nombre_co,
       c.comision,
       a.fecha_modificacion
FROM comercial c
INNER JOIN auditoria a
ON c.id_comercial = a.id_comercial;

SELECT a.usuario,
       c.nombre_co,
       c.apellido1
FROM auditoria a
INNER JOIN comercial c
ON a.id_comercial = c.id_comercial;


-- CONSULTAS COMPLEJAS

SELECT ciudad,
       COUNT(*) AS total_clientes
FROM clientes
GROUP BY ciudad;

SELECT AVG(comision) AS promedio_comision
FROM comercial;
