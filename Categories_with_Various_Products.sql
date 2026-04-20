SELECT p.name, c.name
FROM products p, categories c
WHERE p.id_categories = c.id
AND amount > 100 
AND id_categories IN (SELECT c.id
                 FROM categories c
                 WHERE id = 1 OR
                 id = 2 OR
                 id = 3 OR
                 id = 6 OR 
                 id = 9)
ORDER BY c.id ASC;