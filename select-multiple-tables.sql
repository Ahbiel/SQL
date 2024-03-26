SELECT u.id AS uid, p.id AS pid, 
u.first_name, p.description 
FROM users u, profile p
WHERE u.id = p.user_id; -- Precisa do where dessa forma para deixar os dados consistentes
-- Se nao, teria um p.id para cada u.id