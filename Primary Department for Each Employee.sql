# Write your MySQL query statement below
# SELECT employee_id, department_id
# FROM Employee
# WHERE (employee_id, primary_flag) IN (
#   SELECT employee_id, 'Y'
#   FROM Employee
# )
# ORDER BY employee_id;

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
UNION
SELECT employee_id, department_id
FROM Employee
WHERE employee_id NOT IN (
  SELECT employee_id
  FROM Employee
  WHERE primary_flag = 'Y'
)
ORDER BY employee_id;
