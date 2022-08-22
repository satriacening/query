select distinct nmaj."Product" ,
	nmaj."Stage" ,
	nmaj."Accounting Date" ,
	nmaj."Shop Code" ,
	ps.store_code 
from new_maruetsu_adj_juni nmaj 
inner join purchasing p 
	on nmaj."Product" = p.product 
		and nmaj."Shop Code" = p.shop_code  
inner join disposal d 
	on p.product = d.product
		and p.shop_code = d.shop_code 
inner join maruetsu_product_jan mpj 
	on d.product = mpj.product_code 
inner join new_maruetsu_single_juni nmsj 
	on mpj.jan = nmsj."Jan Code"
inner join pos_sales ps 
	on nmsj."Jan Code" = ps.product_code
order by nmaj."Accounting Date" 
;

select * from new_maruetsu_adj_juni nmaj ;
select count(*) from  pos_sales ps ;
select count(*) from (
	select distinct nmaj."Product" ,
	nmaj."Stage" 
from new_maruetsu_adj_juni nmaj 
inner join purchasing p 
	on nmaj."Product" = p.product 
inner join disposal d 
	on p.product = d.product 
inner join maruetsu_product_jan mpj 
	on d.product = mpj.product_code 
inner join new_maruetsu_single_juni nmsj 
	on mpj.jan = nmsj."Jan Code"
inner join pos_sales ps 
	on nmsj."Jan Code" = ps.product_code

) cnt ;


select * from maruetsu_purchasing mp ;
select transaction_date::to_timestamp()  from maruetsu_purchasing p;

Select transaction_date to_timestamp(date_int)  from maruetsu_purchasing p;

SELECT to_timestamp(transaction_date) from maruetsu_purchasing mp ;
select transaction_date::date from maruetsu_purchasing mp ;
SELECT to_date(transaction_date::text, 'YYYYMMDDss') from maruetsu_purchasing mp ;

SELECT 
	mp.product , 
	mp.shop_code , 
	to_char( to_date(transaction_date::text, 'YYYYMMDDss'), 'Month DD, YYYY') as transaction_date, 
	mp.purchasing_qty ,
	mp.from_table 
from maruetsu_purchasing mp ;


SELECT 
	mp.product , 
	mp.shop_code , 
	to_date(transaction_date::text, 'YYYYMMDDss') as transaction_date, 
	mp.purchasing_qty ,
	mp.purchasing_value ,
	mp.from_table 
from maruetsu_purchasing mp ;

select 
	mps.product_code_from_logic ,
	mps.store_code ,
	to_date(mps.transaction_date::text, 'YYYYMMDDss') as transaction_date ,
	mps .pos_sales_qty ,
	mps .pos_sales_value ,
	mps .from_table 
from maruetsu_pos_sales mps ;
select count(*) from maruetsu_pos_sales mps  ; 

select * from pos_sales ps ;
select * from purchasing p ;

select ps.product_code , quantity 
from pos_sales ps 
group by ps.quantity , ps.product_code 
order by quantity asc
;

select count(
	select  sum(quantity) from pos_sales ps 
	where product_code  = 4902102000161)
from maruetsu_pos_sales mps ;

select * from maruetsu_product_jan mpj where  product_code  = 0040018;

select quantity from pos_sales ps 
where product_code = 4902102000161;

select
	to_timestamp(transaction_date_start, 'YYYYMMDDss') 
from pos_sales ps ;

select
	to_char( to_date(transaction_date_start::text, 'YYYYMMDDss'), 'Month') as transaction_date
from pos_sales ps ;

select
	to_char ( to_date(transaction_date_start::text, 'YYYYMMDDss'), 'YYYY') as transaction_date
from pos_sales ps ;