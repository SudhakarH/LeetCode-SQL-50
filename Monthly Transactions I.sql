# Write your MySQL query statement below
select #concat(year(trans_date), '-', EXTRACT(MONTH FROM trans_date)) month,
    DATE_FORMAT(trans_date, '%Y-%m') month,
    country,
    count(id) trans_count,
    count(case when state = 'approved' then 5 end) approved_count,
    sum(amount) trans_total_amount, 
    sum(case when state = 'approved' then amount else 0 end) approved_total_amount
from transactions t
group by country, month
