-- 2621 - Amounts Between 10 and 20 

SELECT products.name FROM products
INNER JOIN providers ON providers.id = products.id_providers
WHERE products.amount BETWEEN 10 AND 30
AND providers.name LIKE 'P%';
