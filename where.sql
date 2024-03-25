--Where básico com select
select * from users;

select * from users where id >= 50 AND id < 60;

select * from users where id > 100 or first_name = "Hayfa" or first_name = "Angelo";

select * from users where created_at < "2021-03-23";

-- where between

select * from users where created_at between "2020-06-12 00:00:00" and "2020-09-04 23:59:59"

select * from users where created_at 
between 
"2020-06-12 00:00:00" 
and 
"2020-09-04 23:59:59"
and id between 20 and 80;

-- Where in

select * from users where 
id in (45, 60, 100, 105, 140);

select * from users where
id in (45, 60, 100, 105) and first_name in ("Len", "Jaime")

-- where like

select * from users where first_name like "a%";
select * from users where first_name like "_n%";

-- where [condition] ordey by 
select id, first_name, last_name from users where id between 50 and 70 order by id desc;

select id, first_name, last_name from users where id between 50 and 70 order by created_at asc;

-- limit e offset
select * from users limit 5 offset 2;