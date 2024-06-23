# Write your MySQL query statement below
with cte as(
select product_id,sum(unit) as unit from orders
where Extract(YEAR_MONTH from order_date)='202002' 
group by 1
having sum(unit)>=100)


select a.product_name, b.unit from products a join cte b on a.product_id=b.product_id
