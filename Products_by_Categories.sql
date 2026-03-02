-- 2609 Products by Categories

SELECT categories.name, SUM(products.amount) AS sum
FROM products, categories
WHERE products.id_categories = categories.id
GROUP BY categories.name;