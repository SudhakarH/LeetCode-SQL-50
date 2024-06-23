# Write your MySQL query statement below
with cte1 as
(select requester_id as id from requestaccepted),

cte2 as
(select accepter_id as id from requestaccepted),

cte3 as
(
(select id from cte1 )
union all
(select id from cte2)
)


select id,count(id) as num from
cte3
group by 1
order by count(id)DESC
limit 1
