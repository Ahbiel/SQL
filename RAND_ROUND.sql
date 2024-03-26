select * from users;

-- 15 dígitos e 2 casas decímais
ALTER TABLE users ADD COLUMN salary DECIMAL(15,2) NULL;

SELECT rand() * 10000 as salary; -- Gera valores aleatórios
SELECT round(rand() * 10000, 2) as salary; #Arredonda com base no número de casas decimais

UPDATE users SET salary = ROUND(RAND()*10000,2); -- duas casas decimais

SELECT salary 
FROM users 
WHERE salary 
BETWEEN 1000 and 1500
ORDER BY salary asc;