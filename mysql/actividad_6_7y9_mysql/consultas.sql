/*lista el nombre de  todos los productos de la tabla producto*/
select nombre from pro;
/*nombre y precios*/
select nombre,precio from pro;
/*todas las columnas*/
select * from pro;
/*nombre del producto,precio y fabricante*/
select pro.nombre,precio,fab.nombre
from pro inner join fab
on pro.numero_fabricante= fab.numero_fabricante;
 /*devulve productos lenovo*/
 select nombre,precio,numero_fabricante from pro where numero_fabricante = 2;
 /*mismo precio del producto mas caro de lenovo*/
  select codigo,nombre,precio,numero_fabricante from pro where precio = 559;
  /*el producto mas caro de la marca lenovo*/
  select nombre,precio from pro where numero_fabricante = 2
  order by precio desc
  limit 1