-- INNER JOIN
SELECT * FROM profile;
SELECT * FROM users;

SELECT * from users as u INNER JOIN profile as p ON u.id = p.user_id;
SELECT u.id uid, p.id pid, u.last_name LastName 
from users as u 
INNER JOIN profile as p ON u.id = p.user_id
WHERE u.id <> 112
ORDER BY u.id desc;