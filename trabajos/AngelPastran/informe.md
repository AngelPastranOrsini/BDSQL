# Informe de Base de Datos - BDventas

## 1. Descripción general

La base de datos BDventas está diseñada para gestionar información relacionada con clientes, comerciales y auditorías de cambios en las comisiones de los vendedores.

---

## 2. Estructura de la base de datos

### Tabla CLIENTES

Almacena información de los clientes:

- id_cliente
- nombre_c
- apellido1
- apellido2
- ciudad
- email
- tlf_c
- tlf_movil

### Tabla COMERCIAL

Almacena información de los comerciales:

- id_comercial
- nombre_co
- apellido1
- apellido2
- tlf_co
- comision
- importe

### Tabla AUDITORIA

Registra modificaciones realizadas sobre los comerciales:

- id_auditoria
- usuario
- fecha_modificacion
- id_comercial
- comisionAnterior
- comisionActual

---

## 3. Análisis

### Aspectos positivos

- Estructura sencilla y fácil de comprender.
- Uso de claves primarias.
- Separación adecuada de la información.
- Existencia de auditoría para registrar cambios.

### Aspectos mejorables

- No existen claves foráneas explícitas.
- No existe una tabla de ventas.
- No existe relación directa entre clientes y comerciales.

---

## 4. Problemas detectados

- Ausencia de integridad referencial.
- Algunos campos permiten valores NULL innecesarios.
- No existe trazabilidad completa de las ventas realizadas.

---

## 5. Propuestas de mejora

- Crear una tabla ventas.
- Crear una tabla pedidos.
- Relacionar clientes y comerciales mediante claves foráneas.
- Añadir restricciones de integridad referencial.

---

## 6. Conclusión

La base de datos es adecuada para prácticas básicas de SQL. Sin embargo, requiere más relaciones y tablas para representar correctamente un entorno comercial real.
Conclusión

La base de datos es adecuada para prácticas de SQL básicas, aunque necesita más relaciones para representar correctamente un sistema comercial real.
