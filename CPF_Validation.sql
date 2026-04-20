-- fiz com ajuda, 1ª vez vendo esse conteúdo de máscaras
SELECT 
    SUBSTR(np.cpf, 1, 3) || '.' ||
    SUBSTR(np.cpf, 4, 3) || '.' ||
    SUBSTR(np.cpf, 7, 3) || '-' ||
    SUBSTR(np.cpf, 10, 2) AS cpf
FROM natural_person np;
