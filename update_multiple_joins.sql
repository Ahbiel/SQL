SELECT u.first_name, p.bio FROM users u
INNER JOIN profile p 
on p.user_id = u.id
WHERE u.first_name = "Tanner";

UPDATE users u
INNER JOIN profile p
on p.user_id = u.id 
SET p.bio = CONCAT(p.bio, " foi atualizado")
WHERE u.first_name = "Tanner";