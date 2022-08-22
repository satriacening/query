select distinct d.product  
	from disposal d 
inner join inv_adjs ia 
	on d.product = ia.product 
inner join purchasing p 
	on ia.product = p.product	
inner join maruetsu_product_jan mpj 
	on p.product  = mpj.product_code
inner join pos_sales ps 
	on mpj.jan = ps.product_code
inner join single s 
	on ps.product_code = s.jan_code 
order by d.product 
;



select distinct d.product, ps.store_code
	from disposal d 
inner join inv_adjs ia 
	on d.product = ia.product 
inner join purchasing p 
	on ia.product = p.product	
inner join maruetsu_product_jan mpj 
	on p.product  = mpj.product_code
inner join pos_sales ps 
	on mpj.jan = ps.product_code
inner join single s 
	on ps.product_code = s.jan_code 
order by ps.store_code  
;
