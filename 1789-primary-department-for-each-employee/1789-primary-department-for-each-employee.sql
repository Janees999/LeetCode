-- Write your PostgreSQL query statement below
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, MIN(department_id) AS department_id
FROM Employee
GROUP BY employee_id
HAVING SUM(CASE WHEN primary_flag = 'Y' THEN 1 ELSE 0 END) = 0
