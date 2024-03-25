-- O as é usado para atribuir um alias a tabela ou campo
-- Ele pode ser omitido, loclando apenas o apelido na frente da tabela/coluna
-- usar o nome da tabela junto do campo na hora de realizar um select previne conflitos entre tabelas com o mesmo nome em caso de um join (tabelas conectadas)



select * from users as u; 
select * from users u;

select users.first_name, users.email, users.id from users;
select u.first_name, u.email, u.id from users u;

select first_name as Name, email as "Email do usuário", id as identificador from users;
select u.first_name Name, u.email "Email do usuário", u.id identificador from users u;