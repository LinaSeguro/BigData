-- Seleccionar el catálogo (opcional)
CREATE CATALOG IF NOT EXISTS sportzone_sa;
USE CATALOG sportzone_sa;

-- Schema: productos
CREATE SCHEMA IF NOT EXISTS productos_schema;

-- Tabla producto
CREATE TABLE IF NOT EXISTS productos_schema.tbl_producto (
    id_producto STRING NOT NULL,
    nombre_producto STRING,
    marca STRING,
    categoria STRING,
    subcategoria STRING,
    proveedor STRING,
    precio DOUBLE,
    PRIMARY KEY (id_producto)
);

-- Schema: clientes
CREATE SCHEMA IF NOT EXISTS clientes_schema;

-- Tabla cliente
CREATE TABLE IF NOT EXISTS clientes_schema.tbl_cliente (
    id_cliente STRING NOT NULL,
    nombre_cliente STRING,
    apellido_cliente STRING,
    genero_cliente STRING,
    correo_cliente STRING,
    telefono_cliente STRING,
    PRIMARY KEY (id_cliente)
);

-- Schema: tiendas
CREATE SCHEMA IF NOT EXISTS tiendas_schema;

-- Tabla tienda
CREATE TABLE IF NOT EXISTS tiendas_schema.tbl_tienda (
    id_tienda STRING NOT NULL,
    tipo_tienda STRING,
    calle_tienda STRING,
    ciudad_tienda STRING,
    estado_tienda STRING,
    PRIMARY KEY (id_tienda)
);

-- Schema: ventas
CREATE SCHEMA IF NOT EXISTS ventas_schema;

-- Tabla venta
CREATE TABLE IF NOT EXISTS ventas_schema.tbl_venta (
    id_venta STRING NOT NULL,
    id_producto STRING,
    id_cliente STRING,
    id_tienda STRING,
    fecha STRING,
    cantidad_vendida LONG,
    monto_vendido DOUBLE,
    costo_total DOUBLE,
    metodo_pago STRING,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos_schema.tbl_producto(id_producto),
    FOREIGN KEY (id_cliente) REFERENCES clientes_schema.tbl_cliente(id_cliente),
    FOREIGN KEY (id_tienda) REFERENCES tiendas_schema.tbl_tienda(id_tienda)
);
