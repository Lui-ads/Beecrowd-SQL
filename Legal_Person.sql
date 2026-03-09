-- 2622 - Legal Person 


SELECT c.name
FROM customers c, legal_person
WHERE c.id = legal_person.id_customers