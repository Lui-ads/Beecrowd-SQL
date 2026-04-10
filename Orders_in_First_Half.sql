-- 2620 - Orders in First Half

SELECT c.name, o.id 
FROM customers c
INNER JOIN orders o on c.id = o.id_customers
WHERE orders_date < '2016-07-01';
