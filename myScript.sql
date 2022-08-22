
-- filter with like any
-- speed fathed -+ 75ms
select * from 
	single s 
where 
	create_date 
like any
	('{"2022-04-05%", "2022-04-05%"}')
order by 
	jan_code
;

-- filter with similar to
-- bisa langsung di tulis full valuenya atau sebagian dari value di batasi dengan '%'
-- speed fetched -+ 2ms
-- with sub value
select * from 
	single s 
where 
	create_date 
SIMILAR TO 
	'(2022-04-05% | 2022-04-06% )%'; -- with single value 2022-04-06%
;

-- with full value
select * from 
	single s 
where 
	create_date 
SIMILAR TO 
	'2022-04-05 19:10:00';
;

-- filter with in
-- speed fetched 
select * from 
	single s 
where 
	create_date
	in 
	('2022-04-05 19:10:00');

-- inner join
--select t1.name, t2.image_id, t3.path
--from table1 t1 
--inner join table2 t2 on t1.person_id = t2.person_id
--inner join table3 t3 on t2.image_id=t3.image_id

-- melihat tipe data 
SELECT
*
FROM
    information_schema.columns
WHERE
    table_name = 'maruetsu_pos_sales'

-- mengganti tipe data 
ALTER TABLE maruetsu_pos_sales ALTER COLUMN product_code TYPE numeric using product_code::numeric;


-- show tables in postgresql
select * from pg_catalog.pg_tables; 