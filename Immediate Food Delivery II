With cte as (
select 
delivery_id,
customer_id,
order_date,
customer_pref_delivery_date,
row_number() over(partition by customer_id order by order_date) as rownumber
from Delivery
)
select
round(count(case when rownumber = 1
then 
(case when order_date = customer_pref_delivery_date
then 1
end)
end) / count(case when rownumber = 1
then rownumber
end) * 100,2) as immediate_percentage
from cte
