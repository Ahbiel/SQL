SELECT * FROM profile;
SELECT * FROM users;

-- INNER JOIN
SELECT * from users as u INNER JOIN profile as p ON u.id = p.user_id;

SELECT u.id uid, p.id pid, u.last_name LastName 
from users as u 
INNER JOIN profile as p ON u.id = p.user_id
WHERE u.id <> 112
ORDER BY u.id desc;

-- LEFT JOIN
SELECT * from users as u INNER JOIN profile as p ON u.id = p.user_id;
SELECT u.id uid, p.id pid, u.last_name LastName 
from users as u 
LEFT JOIN profile as p ON u.id = p.user_id

-- RIGHT JOIN
SELECT * from users as u INNER JOIN profile as p ON u.id = p.user_id;
SELECT u.id uid, p.id pid, u.last_name LastName 
from users as u 
RIGHT JOIN profile as p ON u.id = p.user_id