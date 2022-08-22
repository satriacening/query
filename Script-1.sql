select * from 
	disposal
where product = 4379251;

select * from 
	inv_adjs
where product = 4379251;

select * from 
	pos_sales
where product_code = 4379251;

select * from 
	single;



drop table if exists newtable; 

where exists 
	(select product  from inv_adjs ia where product != 0)
;


select product
INTO newtable
FROM  inv_adjs ia
where exists (select * from inv_adjs ia2);

select * from inv_adjs ia ;

