SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person a
LEFT JOIN Address p
ON p.personId = a.personId;
