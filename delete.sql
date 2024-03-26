DELETE from profile where id = 23;
DELETE from profile where id in (34,56,98);

SELECT * FROM profile;

-- -------------------------------------

insert into profile (description, bio, user_id)
select CONCAT("Description de ",first_name), CONCAT("Bio de ",first_name),
id from users where id = 34;

delete from users where id = 34;
select * from users where id = 34;

select * from profile; --apaga da tabela de profile quando apago do users por meio do cascade