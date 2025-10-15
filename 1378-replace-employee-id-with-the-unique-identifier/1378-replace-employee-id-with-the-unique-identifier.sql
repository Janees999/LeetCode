SELECT emp.name , e.unique_id
FROM Employees emp
LEFT JOIN EmployeeUNI e
  ON emp.id = e.id;
