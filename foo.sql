create database foo;

create table bar(id int, name varchar(20));

insert into bar(name) values('Bryce');

select * from bar;

update bar set id = 1 where name = 'Bryce';