SELECT cc.name, ROUND((s.math * 2 + s.specific * 3 + s.project_plan * 5) / 10.0, 2) AS avg
FROM candidate cc, score s
WHERE cc.id = s.candidate_id
ORDER BY avg DESC;