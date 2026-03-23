-- 2618 - Imported Products 

SELECT products.name, providers.name, categories.name
FROM products, providers, categories
WHERE products.id_providers = providers.id
  AND products.id_categories = categories.id
  AND categories.name = 'Imported' 
  AND providers.name = 'Sansul SA';