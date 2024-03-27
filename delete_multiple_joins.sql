SELECT u.first_name, p.bio FROM users u
LEFT JOIN profile p 
on p.user_id = u.id
WHERE u.first_name = "Tanner";

DELETE p FROM users u
INNER JOIN profile p
ON p.user_id = u.id
WHERE u.first_name = "Tanner"