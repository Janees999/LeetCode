-- Write your PostgreSQL query statement below
SELECT 
    e1.name
FROM Employee e1
WHERE e1.id IN (
    SELECT managerId
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
);
