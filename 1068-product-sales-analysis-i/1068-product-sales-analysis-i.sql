SELECT P.product_name,S.year,S.price
FROM Sales s
JOIN product p
ON s.product_id=p.product_id;