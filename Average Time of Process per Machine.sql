# Write your MySQL query statement below
SELECT a.machine_id, ROUND(AVG(b.timestamp-a.timestamp),3) AS processing_time
FROM Activity a,Activity b
WHERE a.activity_type='start' and b.activity_type='end' and a.process_id=b.process_id and a.machine_id=b.machine_id
GROUP BY a.machine_id;
