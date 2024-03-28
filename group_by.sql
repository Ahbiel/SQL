SELECT first_name, COUNT(id) as total FROM users
GROUP BY first_name
ORDER BY total DESC;

SELECT u.first_name, COUNT(u.id) as total FROM users as u
LEFT JOIN profile as p
ON p.user_id = u.id
WHERE u.id in (117,118)
GROUP BY first_name;

-- agregacoes

SELECT 
first_name as name,
max(salary) as max_salary,
min(salary) as min_salary,
avg(salary) as media_salary,
sum(salary) as soma,
count(salary) as ocorrencia
FROM users WHERE first_name = "Keelie"
GROUP BY first_name;

SELECT 
max(u.salary) as max_salary,
min(u.salary) as min_salary,
avg(u.salary) as media_salary,
sum(u.salary) as soma,
count(u.salary) as ocorrencia
FROM users as u
LEFT JOIN profile as p
ON p.user_id = u.id
WHERE u.id in (117,118,116)
GROUP BY first_name;