select * 
from new_maruetsu_single_juni  msi
join maruetsu_product_jan mpj
    on mpj.jan = msi."Jan Code" 
join new_maruetsu_adj_juni adj
    on adj."Shop Code"  = msi."Store Cd"
    and mpj.product_code = adj."Product" 
where msi."Stage"  !=1
    and msi."Store Cd"  in ('9601','9602','9003','9259','9291','9351','9405','9644','9604','9605','9606','9608','9609','9610','9611','9612','9083','9056','9029','9063','9125','9128','9136','9142','9146','9149','9150','9153','9156','9157','9168','9169','9173','9185','9196','9206','9209','9213','9214','9217','9237','9243','9245','9248','9253','9320','9380','9395','9426','9433','9437','9442','9631','9640','9652')
;

select * from new_maruetsu_single_juni nmsj ;
select * from new_maruetsu_adj_juni nmaj ;
select  * from maruetsu_product_jan mpj ;
select  * from single s ;

select 
	count(s.jan_code), s."location", s.jan_code  , s.area 
from 
	single s  
group by s."location" , s.jan_code, s.area 
order by  count(s.jan_code) desc 
limit 5;

select  
    sum(ps.quantity), ps.product_code_from_logic
from 
    pos_sales ps
where
    ps.product_code_from_logic in 
        ('7735281',
        '7744254',
        '7739139',
        '7741157',
        '7741158',
        '7741111',
        '7741436',
        '7741450',
        '7741454')
    and ps.stage != 1
    and ps.store_code = '9253'
group by ps.product_code_from_logic
order by count(ps.product_code_from_logic) desc
;

select *  
from join_inventory_single_all_by_accounting_date_minus_one_only_act jn
where jn.store_cd = 9214 
and jn.store_cd = 9237
;

9214
9217
9237
9243
9245
9248
9253
9259
9291
9320
9351

