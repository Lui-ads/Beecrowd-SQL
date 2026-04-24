-- 2745 - Taxes

-- Tentei usar subconsulta, mas não deu, então com a ajuda da IA
-- cheguei nesse código

SELECT 
    name, 
    ROUND(salary * 0.10, 2) AS tax
FROM people
WHERE salary > 3000;
