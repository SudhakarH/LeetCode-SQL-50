

with table2 as
(
   
   select distinct customer_id,product_key from Customer

) 

select customer_id from table2 group by customer_id
having count(*) in (select count(*) from product )
