-- 2744 - Passwords

SELECT id, password, MD5(password) AS MD5
FROM account;
