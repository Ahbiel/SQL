SELECT u.id uid, u.first_name, p.bio, r.name
FROM users as u
LEFT JOIN profile p on u.id = p.user_id
INNER JOIN users_roles ur on u.id = ur.user_id
INNER JOIN roles as r on ur.role_id = r.id
ORDER BY uid ASC;