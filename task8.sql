
select * from sales
select * from product
select * from customer	

----- get display profits 
select order_id, ship_mode, sales, quantity, profit from sales
where profit::varchar ~* '^(1|8)[0-9]{3}.(9|5|1)[0-9]{2}[3-7]$'

	----- get display profits 585.552 --

select  order_id,profit from sales
where profit::varchar ~*'^(4|5)(7|8)[0-9].[1-5][3-5][0-3]$'
	

select order_id,sales::varchar from sales
where sales::varchar ~* '^(3|7){3}'


--- diplay customer_id, customer name a to z first word and second word is d|a

select customer_id,customer_name from customer
where customer_name ~* '^[a-z](d|a)'

select customer_id,customer_name from customer
where customer_name ~*'(P|D)[a-z]'
	
-----------------------------

select * from product 
where product_id ~'OFF\-ST'
order by product_id limit 5

----get query order_id having and year 2014 

select order_id from sales
where order_id ~* '^US-2014'

----get query order_id , us and year 2014 OR 2015

select order_id from sales 
where order_id ~* '^US-201(4|5)'

---- get disply  segment last digit  r
select segment from customer 
where segment ~* 'r$'


----------- det display customer_id ,age and show age 1-2,5|6|7|8

select customer_id,age from customer 
where age::varchar ~* '^[2-5](0|2|3)$'

select customer_id,age from customer
where age::varchar~*'^[1-2](5|6|7|8)$'

	
	--- get the disply order_id,ship_mode,quantity,sales and show quntity 2|3|4

select order_id, ship_mode, quantity,sales from sales
where quantity::varchar ~* '^(2|3|4)$'



select product_id from sales where product_id ~* 'tec'




