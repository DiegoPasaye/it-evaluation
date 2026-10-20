--clientes (id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT NOT NULL,correo TEXT NOT NULL,ciudad TEXT NOT NULL);
--productos (id INTEGER PRIMARY KEY AUTOINCREMENT,nombre TEXT NOT NULL,precio REAL NOT NULL,stock INTEGER NOT NULL);
--ventas (id INTEGER PRIMARY KEY AUTOINCREMENT,cliente_id INTEGER REFERENCES clientes(id),producto_id INTEGER REFERENCES productos(id),cantidad INTEGER NOT NULL,fecha TEXT NOT NULL);

--Ejercicio 1 - 6. Consulta y filtros
--Obtén nombre y correo de los clientes cuya ciudad sea “Querétaro”.

select nombre, correo from clientes where ciudad = 'Queretaro';

--7. Ordenamiento
--Muestra los cinco productos más caros, incluyendo nombre, precio y stock.

select nombre, precio, stock from productos order by precio desc limit 5;


--8. Inserción y actualización
--Inserta un producto llamado “Webcam”, precio 899 y stock 12. Después actualiza su stock a 10 usando su id.

insert into productos (nombre, precio, stock) values ('Webcam', 899, 12);
select * from productos;
update productos set stock = 10 where id=6;

--9. JOIN entre tablas
--Muestra por cada venta: id de venta, fecha, nombre del cliente, nombre del producto y cantidad.
select ventas.id as venta_id, ventas.fecha, clientes.nombre as cliente, productos.nombre as producto, ventas.cantidad from ventas 
JOIN clientes ON ventas.cliente_id = clientes.id
JOIN productos ON ventas.producto_id = productos.id;

--10. Agrupación y suma
--Obtén por cliente el importe total de sus compras (cantidad * precio), ordenado de mayor a menor. Incluye clientes sin compras con total 0 como reto opcional.
select clientes.id as cliente_id, clientes.nombre as cliente, coalesce(sum(ventas.cantidad * productos.precio),0) as total 
from clientes left join ventas on clientes.id = ventas.cliente_id left join productos on ventas.producto_id = productos.id
group by clientes.id, clientes.nombre order by total desc;