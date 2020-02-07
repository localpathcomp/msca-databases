create database vending_machine;

use vending_machine;

create table products (id tinyint auto_increment, primary key(id), name varchar(20), price smallint, location varchar(6));

create table orders (id int unsigned auto_increment, primary key(id), product_id tinyint, date timestamp, payment_method varchar(6));

alter table orders add foreign key(product_id) references products(id);