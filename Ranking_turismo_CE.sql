-- 3492 - Ranking turismo CE 

SELECT 
    c.nome_cidade, 
    c.regiao, 
    COUNT(DISTINCT p.ponto_id) AS qnt_pontosT, 
    ROUND(AVG(a.nota), 2) AS mediaNotas,
    DENSE_RANK() OVER (PARTITION BY c.regiao ORDER BY AVG(a.nota) DESC, c.nome_cidade ASC) AS ranking_regional
FROM Cidades c
INNER JOIN PontosTuristicos p ON c.cidade_id = p.cidade_id
INNER JOIN Avaliacoes a ON p.ponto_id = a.ponto_id
GROUP BY c.cidade_id, c.nome_cidade, c.regiao
HAVING COUNT(DISTINCT p.ponto_id) >= 2
ORDER BY c.regiao, ranking_regional, c.nome_cidade;
