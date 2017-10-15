--punto1
--la tercer columna no pide 
select clie_codigo,clie_razon_social,clie_limite_credito
from Cliente
where clie_limite_credito>=1000
--punto2
select prod_codigo,prod_detalle,fact_fecha
from Producto,Item_Factura,Factura
where prod_codigo=Item_Factura.item_producto and item_numero=fact_numero and YEAR(fact_fecha)=2012
--punto3
--al parecel el nombre esta en prod_detalle, y el stockTotal es stoc_cantidad y no stoc_stock_maximo
select prod_codigo,prod_detalle,stoc_cantidad
from Producto,Composicion,STOCK
where prod_codigo=comp_producto and comp_producto=stoc_producto and stoc_cantidad >=AVG(STOCK.stoc_cantidad) 
-- no me sale el where del promedio , (filtra mayor del promedio)
