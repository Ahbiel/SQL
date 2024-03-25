-- insere valores em uma tabela usando outra
select 1 as column, "qualquer coisa" as column2


insert into profile (bio, description, user_id) 
select CONCAT("Uma bio muito legal de ", first_name),
	   CONCAT("Uma descricao muito legal de ", first_name),
	   id from users where id between 25 and 30;