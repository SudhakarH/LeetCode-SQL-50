# Write your MySQL query statement below
select user_id, concat(Upper(Left(name,1)),Lower(Right(name,length(name)-1))) as name from users
order by 1
