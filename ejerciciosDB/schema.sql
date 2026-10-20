DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT NOT NULL,correo TEXT NOT NULL,ciudad TEXT NOT NULL);
CREATE TABLE productos (id INTEGER PRIMARY KEY AUTOINCREMENT,nombre TEXT NOT NULL,precio REAL NOT NULL,stock INTEGER NOT NULL);
CREATE TABLE ventas (id INTEGER PRIMARY KEY AUTOINCREMENT,cliente_id INTEGER REFERENCES clientes(id),producto_id INTEGER REFERENCES productos(id),cantidad INTEGER NOT NULL,fecha TEXT NOT NULL);

INSERT INTO clientes (nombre, correo, ciudad) VALUES
('Ana Gómez', 'ana@example.com', 'Queretaro'),
('Carlos López', 'carlos@example.com', 'Morelia'),
('María Ruiz', 'maria@example.com', 'Queretaro');

INSERT INTO productos (nombre, precio, stock) VALUES
('Mouse', 350.00, 20),
('Teclado', 650.00, 15),
('Monitor', 3500.00, 8),
('Audífonos', 450.00, 30),
('Laptop', 15000.00, 5);

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha) VALUES
(1, 1, 2, '2026-03-01'),
(1, 3, 1, '2026-03-02'),
(2, 2, 1, '2026-03-03'),
(3, 4, 3, '2026-03-04');