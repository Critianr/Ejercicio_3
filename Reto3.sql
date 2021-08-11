SELECT SUM(cantidad) as total , ID_Proyecto, Pagado,  Proveedor
from Compra
WHERE Pagado = 'No'
GROUP by ID_Proyecto
HAVING total > 50
/* ----------2--------------*/
SELECT SUM(Cantidad) as Compras, Nombre, Primer_Apellido, Proyecto.ID_Proyecto
FROM Proyecto
JOIN Lider on Lider.ID_Lider = Proyecto.ID_Lider
JOIN Compra ON Proyecto.ID_Proyecto = Compra.ID_Proyecto
/*HAVING Compras > 80*/
GROUP BY Proyecto.ID_Proyecto
ORDER BY Compras DESC 
LIMIT 100

/* ---------2---------------*/
SELECT SUM(Cantidad) as Compras, Nombre, Primer_Apellido, Proyecto.ID_Proyecto
FROM Proyecto
JOIN Lider on Lider.ID_Lider = Proyecto.ID_Lider
JOIN Compra ON Proyecto.ID_Proyecto = Compra.ID_Proyecto
GROUP by Lider.ID_Lider  
HAVING Compras >= 80 
/* ----------3--------------*/

/* ----------3--------------*/
SELECT * from Tipo, Proyecto , Lider 
WHERE Financiable = 1 AND Proyecto.Clasificacion = 'Casa'  AND Salario < 1000000 AND Tipo.Area_Max > 300 and Tipo.Estrato < 4
AND Proyecto.Acabados = 'Si' 

/* ----------4--------------*/
SELECT Fecha_Inicio as Inicio, Financiable, Estrato FROM Proyecto, Tipo
WHERE Estrato >= 5 AND Financiable = '0' AND Porcentaje_Cuota_Inicial >= 0.3
ORDER BY Inicio

/* ----------5--------------*/

SELECT Proyecto.ID_Proyecto , Pagado , Clasificacion FROM Proyecto ,Compra, MaterialConstruccion
WHERE Clasificacion IN ('Apartamentos' , 'Apartaestudio') AND Pagado IN ('Parcialmente' , 'No') AND Importado = 'Si' AND Acabados = 'No' 
AND  MaterialConstruccion.ID_MaterialConstruccion = MaterialConstruccion.ID_MaterialConstruccion
GROUP BY Proyecto.ID_Proyecto 


 
 




