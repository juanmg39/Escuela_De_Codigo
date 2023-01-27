/*Calcula el número total de productos que hay en la tabla productos.*/ 
select count(*) as numero_de_productos from pro;
/*Muestra el número total de productos que tiene cada uno de los fabricantes.
 El listado también debe incluir los fabricantes que no tienen ningún producto.
 El resultado mostrará dos columnas, una con el nombre del fabricante y 
 otra con el número de productos que tiene. Ordene el resultado 
 descendentemente por el número de productos.*/
 select fab.nombre as fabricante,
 count(pro.numero_fabricante) as numero_de_productos
 from fab left join pro
 on pro.numero_fabricante = fab.numero_fabricante
 group by fab.nombre;
/*Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. 
El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.*/
select fab.nombre as fabricante,
min(precio) as minimo_precio,
max(precio) as maximo_precio,
format(avg(precio),2) as promedio
from fab join pro
on fab.numero_fabricante = pro.numero_fabricante
group by fab.numero_fabricante;
/*Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio 
y el número total de productos de los fabricantes que tienen un precio medio superior a 200€.
 Es necesario mostrar el nombre del fabricante.
 nombre-preciomax-minimo-medio-precio mayor a 200*/
select fab.nombre as frabricante,
max(precio) as max_precio,
min(precio) as min_precio,
avg(precio) as superior_a_200
from fab join pro
on fab.numero_fabricante = pro.numero_fabricante
group by fab.numero_fabricante
having avg(precio)>=200;
