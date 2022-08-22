
select * from inv_adjs ia ;

SELECT 
	inv_adjs.product as inv_pd, unique_key, disposal.product as dp
FROM 
	inv_adjs 
inner JOIN 
	disposal 
on
	inv_adjs.product  = disposal.product;
	

select * from pos_sales ps;

where unique_key similar to '202204060092614379251%';

USE satria;